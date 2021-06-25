module TD::Types
  # A message was unpinned.
  #
  # @attr message [TD::Types::Message] Unpinned message.
  class ChatEventAction::MessageUnpinned < ChatEventAction
    attribute :message, TD::Types::Message
  end
end
