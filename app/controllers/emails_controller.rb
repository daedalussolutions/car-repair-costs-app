class EmailsController < ApplicationController
    before_action :authenticate_user!

    def update
        if current_user.update(email_params)
            redirect_to account_path, notice: "Your email has been updated successfully."
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private

    def email_params
        params.require(:user).permit(
            :email,
            :password_challenge
        ).with_defaults(password_challenge: "")
    end
end
