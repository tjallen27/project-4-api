class PrintSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_src, :height, :width, :medium, :price, :body
  belonds_to :user
  has_many :comments

  def image_src
    object.image.url
  end
end
