module TD::Types
  # The information about interactions with a message has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  # @attr interaction_info [TD::Types::MessageInteractionInfo, nil] New information about interactions with the
  #   message; may be null.
  class Update::MessageInteractionInfo < Update
    attribute :chat_id, TD::Types::Integer
    attribute :message_id, TD::Types::Integer
    attribute :interaction_info, TD::Types::MessageInteractionInfo.optional.default(nil)
  end
end
