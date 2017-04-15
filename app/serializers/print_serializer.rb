class PrintSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :height, :width, :medium, :price, :body
  has_one :user
end
