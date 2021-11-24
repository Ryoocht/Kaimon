class Api::V1::User::UsersController < Api::V1::ApplicationController
    before_action :set_user, only: [:show, :edit]

    def show
        render json: @user
    end

    def edit
        render json: @user
    end

    def update
        
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :email, :last_name, :first_name, :phone_number)
    end
end
