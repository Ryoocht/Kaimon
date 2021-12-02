class State < ApplicationRecord
    has_many :user_addresses
    has_many :store_addresses
end
