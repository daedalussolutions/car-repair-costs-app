class CurrenciesController < ApplicationController
    def update
        if current_user.update(currency_params)
            redirect_back fallback_location: services_path, notice: "Your currency preference has been updated successfully."
        else
            render :account, status: :unprocessable_entity
        end
    end

    def currency_params
        params.require(:user).permit(
            :currency
        )
    end
end
