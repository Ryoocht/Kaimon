class Api::V1::StoresController < Api::V1::ApplicationController
    before_action :set_store, only: [:show]

    def index
        stores = Store.all
        render json: stores, only: [:id, :name, :top_image]
    end

    def store_search
        # input = Geocoder.search(params[:geo_address])
    end

    def show
        render json: @store
    end

    private

    def set_store
        @store = Store.find(params[:id])
    end

    # def store_params
    #     params.require(:store).permit(:)
    # end
end
