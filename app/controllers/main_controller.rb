class MainController < ApplicationController
    def index
        @show_footer = true
        @services = Service.order(:sort).paginate(page: params[:page], per_page: 6)
        @recent_reviews = Review.order(created_at: :desc).paginate(page: params[:page], per_page: 4)
    end

    def service
        @services = Service.find_by(id: params[:id])
    end
end