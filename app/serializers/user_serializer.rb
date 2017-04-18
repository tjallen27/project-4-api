class UserSerializer < ActiveModel::Serializer
  has_many :prints
  attributes :id, :username, :email
end
