class PrintSerializer < ActiveModel::Serializer
  attributes :id, :title, :height, :width, :medium, :price, :body
  has_one :user
end
