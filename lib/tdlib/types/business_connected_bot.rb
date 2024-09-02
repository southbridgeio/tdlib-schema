module TD::Types
  # Describes a bot connected to a business account.
  #
  # @attr bot_user_id [Integer] User identifier of the bot.
  # @attr recipients [TD::Types::BusinessRecipients] Private chats that will be accessible to the bot.
  # @attr can_reply [Boolean] True, if the bot can send messages to the private chats; false otherwise.
  class BusinessConnectedBot < Base
    attribute :bot_user_id, TD::Types::Coercible::Integer
    attribute :recipients, TD::Types::BusinessRecipients
    attribute :can_reply, TD::Types::Bool
  end
end
