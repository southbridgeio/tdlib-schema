module TD::Types
  # A forwarded message.
  #
  # @attr from_chat_id [Integer] Identifier for the chat this forwarded message came from.
  # @attr message_id [Integer] Identifier of the message to forward.
  #   A message can be forwarded only if message.can_be_forwarded.
  # @attr in_game_share [Boolean] True, if a game message is being shared from a launched game; applies only to game
  #   messages.
  # @attr copy_options [TD::Types::MessageCopyOptions] Options to be used to copy content of the message without
  #   reference to the original sender; pass null to forward the message as usual.
  class InputMessageContent::Forwarded < InputMessageContent
    attribute :from_chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :in_game_share, TD::Types::Bool
    attribute :copy_options, TD::Types::MessageCopyOptions
  end
end
