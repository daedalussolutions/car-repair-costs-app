class CurrenciesController < ApplicationController
    def update
        if current_user.update(currency_params)
            redirect_back fallback_location: services_path, notice: "Your currency preference has been updated successfully."
        else
            render :account, status: :unprocessable_entity
        end
    end

    def create
        currency = params[:currency]
        cookies[:currency] = currency if currency.present?
        redirect_back(fallback_location: root_path)
    end

    def currency_params
        params.require(:user).permit(
            :currency
        )
    end
end
