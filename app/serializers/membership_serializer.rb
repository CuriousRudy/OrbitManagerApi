class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :clan_id
end
