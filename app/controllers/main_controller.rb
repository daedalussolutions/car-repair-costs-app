class MainController < ApplicationController
    def index
        @services = Service.order(:sort)
        @recent_reviews = Review.order(created_at: :desc).limit(10) 
    end

    def service
        @services = Service.find_by(id: params[:id])
    end
end