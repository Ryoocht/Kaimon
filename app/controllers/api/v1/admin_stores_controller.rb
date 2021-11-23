class Api::V1::AdminStoresController < Api::V1::ApplicationController

    def index
        admin_stores = AdminStore.all
        render json: admin_stores.to_json(:include => {
            :admin => {:only => [:username]},
            :store => {:only => [:name]}
        }, :except => [:updated_at])
    end
end
