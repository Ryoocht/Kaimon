class Api::V1::AddressesController < Api::V1::ApplicationController

    def index
        @addresses = Address.all
        render json: @addresses
    end
end
