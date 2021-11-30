class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :username, :email, :last_name, :first_name, :phone_number
    has_one :user_address
end