class DreamSerializer < ActiveModel::Serializer
  attributes :id, :date, :mood, :body, :user_id
end
