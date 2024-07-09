module TD::Types
  # Contains information about a link to boost a chat.
  #
  # @attr is_public [Boolean] True, if the link will work for non-members of the chat.
  # @attr chat_id [Integer] Identifier of the chat to which the link points; 0 if the chat isn't found.
  class ChatBoostLinkInfo < Base
    attribute :is_public, TD::Types::Bool
    attribute :chat_id, TD::Types::Coercible::Integer
  end
end
