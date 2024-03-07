class ServiceController < ApplicationController
    def index
        
    end

    def show 
        @service = Service.find(params[:id])
        @review = @service.reviews.build
        @reviews = @service.reviews.paginate(page: params[:page], per_page: 10)

        @reviews_by_count = @reviews.group(:service_provider).count.sort_by { |_, count| count }.reverse
        @most_popular_provider = @reviews_by_count.first&.first

        puts(@most_popular_provider)
    end

    private

    def service_params
        params.require(:service).permit(:title, :minimum_price, :maximum_price, :average_price)
    end
end
