class NotificationSerializer
    include FastJsonapi::ObjectSerializer
    attributes :sender, :activity_type, :is_unread
end