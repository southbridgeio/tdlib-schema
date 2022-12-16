module TD::Types
  # A chat draft has changed.
  # Be aware that the update may come in the currently opened chat but with old content of the draft.
  # If the user has changed the content of the draft, this update mustn't be applied.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr draft_message [TD::Types::DraftMessage, nil] The new draft message; may be null.
  # @attr positions [Array<TD::Types::ChatPosition>] The new chat positions in the chat lists.
  class Update::ChatDraftMessage < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :draft_message, TD::Types::DraftMessage.optional.default(nil)
    attribute :positions, TD::Types::Array.of(TD::Types::ChatPosition)
  end
end
