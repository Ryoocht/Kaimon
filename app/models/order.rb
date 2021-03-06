class Order < ApplicationRecord
  has_many :product_orders
  has_many :products, through: :product_orders
  belongs_to :user
  belongs_to :store
end
