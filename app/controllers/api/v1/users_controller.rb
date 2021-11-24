class Api::V1::UsersController < Api::V1::ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
    end

    private

    def user_params
        params.require(:user).permit(
            :name, 
            :password, 
            :password_confirmation, 
            user_address_attributes: [
                :street,
                :suburb,
                :state_id,
                :post_code
            ]
        )
    end
end