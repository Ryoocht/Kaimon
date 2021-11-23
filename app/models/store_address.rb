class StoreAddress < ApplicationRecord
    belongs_to :store
    belongs_to :state
end
