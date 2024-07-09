module TD::Types
  # Messages in a business account were deleted; for bots only.
  #
  # @attr connection_id [TD::Types::String] Unique identifier of the business connection.
  # @attr chat_id [Integer] Identifier of a chat in the business account in which messages were deleted.
  # @attr message_ids [Array<Integer>] Unique message identifiers of the deleted messages.
  class Update::BusinessMessagesDeleted < Update
    attribute :connection_id, TD::Types::String
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
