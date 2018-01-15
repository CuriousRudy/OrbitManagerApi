class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :light, :race, :gender, :class, :level, :player_emblem, :user_id
end
