module TD::Types
  # The list of active emoji reactions has changed.
  #
  # @attr emojis [Array<TD::Types::String>] The new list of active emoji reactions.
  class Update::ActiveEmojiReactions < Update
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
