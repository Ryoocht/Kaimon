class Api::V1::Admin::StoresController < Api::V1::ApplicationController
    before_action :set_store, only: [:show]

    def index
        
    end

    def show
        
    end

    private

    def set_store
        @store = Store.find(params[:id])
    end
end
