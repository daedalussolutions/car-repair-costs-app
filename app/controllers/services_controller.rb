class ServicesController < ApplicationController
    def index
        @services = Service.order(:sort)
    end

    def service
        @services = Service.find_by(id: params[:id])
    end
end
