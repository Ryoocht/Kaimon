class Admin < ApplicationRecord
    has_many :admin_stores
    has_many :stores, through: :admin_stores
end
