module TD::Types
  # A chat was blocked or unblocked.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr block_list [TD::Types::BlockList, nil] Block list to which the chat is added; may be null if none.
  class Update::ChatBlockList < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :block_list, TD::Types::BlockList.optional.default(nil)
  end
end
