class VehicleMakesController < ApplicationController
    def fetch_make_models
        make = VehicleMake.find(params[:vehicle_make])
        @models = make.vehicle_models

        respond_to do |format|
            format.turbo_stream
          end

    end
end
