module TD::Types
  # The chat background was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr background [TD::Types::ChatBackground, nil] The new chat background; may be null if background was reset to
  #   default.
  class Update::ChatBackground < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :background, TD::Types::ChatBackground.optional.default(nil)
  end
end
