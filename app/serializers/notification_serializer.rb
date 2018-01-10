class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :forum_id, :user_id, :previous_length, :current_length, :display
end
