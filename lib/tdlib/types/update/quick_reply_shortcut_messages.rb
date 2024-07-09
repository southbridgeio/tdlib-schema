module TD::Types
  # The list of quick reply shortcut messages has changed.
  #
  # @attr shortcut_id [Integer] The identifier of the shortcut.
  # @attr messages [Array<TD::Types::QuickReplyMessage>] The new list of quick reply messages for the shortcut in order
  #   from the first to the last sent.
  class Update::QuickReplyShortcutMessages < Update
    attribute :shortcut_id, TD::Types::Coercible::Integer
    attribute :messages, TD::Types::Array.of(TD::Types::QuickReplyMessage)
  end
end
