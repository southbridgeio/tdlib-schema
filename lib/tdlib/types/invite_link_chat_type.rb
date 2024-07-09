module TD::Types
  # Describes the type of chat to which points an invite link.
  class InviteLinkChatType < Base
    %w[
      basic_group
      supergroup
      channel
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/invite_link_chat_type/#{type}"
    end
  end
end
