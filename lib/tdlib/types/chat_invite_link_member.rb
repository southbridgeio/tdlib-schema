module TD::Types
  # Describes a chat member joined a chat by an invite link.
  #
  # @attr user_id [Integer] User identifier.
  # @attr joined_chat_date [Integer] Point in time (Unix timestamp) when the user joined the chat.
  class ChatInviteLinkMember < Base
    attribute :user_id, TD::Types::Integer
    attribute :joined_chat_date, TD::Types::Integer
  end
end
