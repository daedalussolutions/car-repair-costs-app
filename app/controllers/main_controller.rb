class MainController < ApplicationController
    def index
        @services = Service.order(:sort).paginate(page: params[:page], per_page: 5)
        @recent_reviews = Review.order(created_at: :desc).paginate(page: params[:page], per_page: 5)
    end

    def service
        @services = Service.find_by(id: params[:id])
    end
end