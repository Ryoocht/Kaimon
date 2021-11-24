class Api::V1::StoresController < Api::V1::ApplicationController
    before_action :set_store, only: [:show]

    def index
        stores = Store.all
        render json: stores, only: [:id, :name]
    end

    def store_search
        # search stores by address
    end

    def show
        
    end

    private

    def set_store
        @store = Store.find(params[:id])
    end
end
