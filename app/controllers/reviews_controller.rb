class ReviewsController < ApplicationController
    def index
        @user = current_user
        @reviews = service.reviews.order(created_at: :desc)
    end
    def create
        @review = Review.new(review_params)
        @review.service_id = params[:service_id]
        @service = Service.find_by(id: @review.service_id)

        @review.user_id = 1
        @review.first_name = current_user.first_name
        @review.last_name = current_user.last_name

        if @review.save
            @service.calculate_average_price
            
            redirect_to service_path(@review.service), notice: 'Review posted.'
        else
            puts @review.errors.full_messages
            redirect_to service_path(@review.service), notice: @review.errors.full_messages
        end

        
    end 

    private

    def review_params
        params.require(:review).permit(:title, :price, :service_provider, :vehicle_make_name, :vehicle_model_name, :vehicle_year_year, :description, :date, :user_id, :first_name, :last_name)
    end
end
