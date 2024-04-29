class NamesController < ApplicationController
    before_action :authenticate_user!

    def update
        if current_user.update(name_params)
            redirect_to account_path, notice: "Your name has been updated successfully."
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private

    def name_params
        params.require(:user).permit(
            :first_name,
            :last_name,
            :password_challenge
        ).with_defaults(password_challenge: "")
    end
end
