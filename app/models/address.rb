class Address < ApplicationRecord
    belongs_to :user
    belongs_to :store
    belongs_to :state
end
