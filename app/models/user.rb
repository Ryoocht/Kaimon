class User < ApplicationRecord
  has_many :comments
  has_many :orders
  has_one :address

  accepts_nested_attributes_for :address, allow_destroy: true
end
