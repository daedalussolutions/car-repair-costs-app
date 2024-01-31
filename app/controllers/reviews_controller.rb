class ReviewsController < ApplicationController
    def index
        @user = current_user
        @reviews = service.reviews.order(created_at: :desc)
    end
    def create
        @review = Review.new(review_params)
        @review.service_id = params[:service_id]

        @review.user_id = 1 # Change this to current_user 

        @review.save

        redirect_to service_path(@review.service)
    end

    private

    def review_params
        params.require(:review).permit(:title, :price, :description, :date)
    end
end
