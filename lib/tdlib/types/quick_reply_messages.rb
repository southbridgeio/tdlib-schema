module TD::Types
  # Contains a list of quick reply messages.
  #
  # @attr messages [Array<TD::Types::QuickReplyMessage>, nil] List of quick reply messages; messages may be null.
  class QuickReplyMessages < Base
    attribute :messages, TD::Types::Array.of(TD::Types::QuickReplyMessage).optional.default(nil)
  end
end
