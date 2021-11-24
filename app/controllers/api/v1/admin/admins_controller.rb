class Api::V1::Admin::AdminsController < Api::V1::ApplicationController
    before_action :set_admin, only: [:show]

    def show
        render json: @admin
    end

    def edit
        
    end

    def update
        
    end

    private

    def set_admin
        @admin = Admin.find(params[:id])
    end
end
