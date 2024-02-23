class AccountController < ApplicationController
    def index
        @reviews = Review.where(user_id: current_user.id).order(created_at: :desc).paginate(page: params[:page], per_page: 4)
      end
end
