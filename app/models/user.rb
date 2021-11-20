class User < ApplicationRecord
  has_many :comments
  has_many :orders
  has_one :address
end
