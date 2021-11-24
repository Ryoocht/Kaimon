class Store < ApplicationRecord
    has_many :orders
    has_many :products
    has_many :holidays
    has_many :admin_stores
    has_many :admins, through: :admin_stores
    has_one :address

end
