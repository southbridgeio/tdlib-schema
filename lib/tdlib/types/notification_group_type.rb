module TD::Types
  # Describes the type of notifications in a notification group.
  class NotificationGroupType < Base
    %w[
      messages
      mentions
      secret_chat
      calls
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/notification_group_type/#{type}"
    end
  end
end
