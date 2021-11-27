class StoreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :top_image, :sub_image, :icon_image
  has_many :products
end
