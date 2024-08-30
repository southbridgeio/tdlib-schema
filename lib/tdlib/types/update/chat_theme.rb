module TD::Types
  # The chat theme was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr theme_name [TD::Types::String, nil] The new name of the chat theme; may be empty if theme was reset to
  #   default.
  class Update::ChatTheme < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :theme_name, TD::Types::String.optional.default(nil)
  end
end
