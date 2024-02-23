class ServiceController < ApplicationController
    def index
        
    end

    def show 
        @service = Service.find(params[:id])
        @review = @service.reviews.build
        @reviews = @service.reviews.paginate(page: params[:page], per_page: 10)
    end

    private

    def service_params
        params.require(:service).permit(:title, :minimum_price, :maximum_price, :average_price)
    end
end
