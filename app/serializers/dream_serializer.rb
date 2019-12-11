class DreamSerializer < ActiveModel::Serializer
  attributes :id, :date, :mood, :body
end
