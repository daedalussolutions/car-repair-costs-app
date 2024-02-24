class ServicesController < ApplicationController
    protect_from_forgery except: :show
    def index
        @services = Service.order(:sort).paginate(page: params[:page], per_page: 6)
    end

    def service
        @services = Service.find_by(id: params[:id ])
        @active_service = params[:active_service_id] ? Service.find(params[:active_service_id]) : @services.first
    end

    def show
        @service = Service.find(params[:id])
        respond_to do |format|
        format.js { render partial: 'shared/service', locals: { service: @service } }
    end
    end
end
