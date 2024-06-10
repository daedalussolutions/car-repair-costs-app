class AccountController < ApplicationController
  def index
    if user_signed_in?
      @reviews = Review.where(user_id: current_user.id).order(created_at: :desc).paginate(page: params[:page], per_page: 4)
    end
    @currencies = Currency.all
  end
end
