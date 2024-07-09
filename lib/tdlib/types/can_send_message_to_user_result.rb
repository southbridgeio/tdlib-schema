module TD::Types
  # Describes result of canSendMessageToUser.
  class CanSendMessageToUserResult < Base
    %w[
      ok
      user_is_deleted
      user_restricts_new_chats
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/can_send_message_to_user_result/#{type}"
    end
  end
end
