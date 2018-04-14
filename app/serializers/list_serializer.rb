class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id

  has_many :ingredients
end
