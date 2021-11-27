class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :price, :like, :image
end
