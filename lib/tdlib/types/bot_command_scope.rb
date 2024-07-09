module TD::Types
  # Represents the scope to which bot commands are relevant.
  class BotCommandScope < Base
    %w[
      default
      all_private_chats
      all_group_chats
      all_chat_administrators
      chat
      chat_administrators
      chat_member
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/bot_command_scope/#{type}"
    end
  end
end
