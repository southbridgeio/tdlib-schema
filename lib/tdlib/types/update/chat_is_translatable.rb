module TD::Types
  # Translation of chat messages was enabled or disabled.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr is_translatable [Boolean] New value of is_translatable.
  class Update::ChatIsTranslatable < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :is_translatable, TD::Types::Bool
  end
end
