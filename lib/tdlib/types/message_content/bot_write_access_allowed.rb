module TD::Types
  # The user allowed the bot to send messages.
  #
  # @attr reason [TD::Types::BotWriteAccessAllowReason] The reason why the bot was allowed to write messages.
  class MessageContent::BotWriteAccessAllowed < MessageContent
    attribute :reason, TD::Types::BotWriteAccessAllowReason
  end
end
