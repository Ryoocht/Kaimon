class UserAddressSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :street, :suburb, :state_id, :post_code
    belongs_to :user
end