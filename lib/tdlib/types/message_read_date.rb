module TD::Types
  # Describes read date of a recent outgoing message in a private chat.
  class MessageReadDate < Base
    %w[
      read
      unread
      too_old
      user_privacy_restricted
      my_privacy_restricted
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_read_date/#{type}"
    end
  end
end
