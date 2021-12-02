class User < ApplicationRecord
  has_many :comments
  has_many :orders
  has_one :user_address

  accepts_nested_attributes_for :user_address, allow_destroy: true
end
