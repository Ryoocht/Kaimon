class Api::V1::StoresController < Api::V1::ApplicationController

    def index
        stores = Store.all
        render json: store
    end

    def store_search
        
    end
end
