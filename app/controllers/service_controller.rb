class ServiceController < ApplicationController
    def index
        
    end

    def show 
        @service = Service.find(params[:id])
    end

    private

    def service_params
        params.require(:service).permit(:title, :minimum_price, :maximum_price, :average_price)
    end
end
