class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body
  belongs_to :user
  belongs_to :print
end
