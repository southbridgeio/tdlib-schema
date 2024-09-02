module TD::Types
  # Contains information about a business bot that manages the chat.
  #
  # @attr bot_user_id [Integer] User identifier of the bot.
  # @attr manage_url [TD::Types::String] URL to be opened to manage the bot.
  # @attr is_bot_paused [Boolean] True, if the bot is paused.
  #   Use toggleBusinessConnectedBotChatIsPaused to change the value of the field.
  # @attr can_bot_reply [Boolean] True, if the bot can reply.
  class BusinessBotManageBar < Base
    attribute :bot_user_id, TD::Types::Coercible::Integer
    attribute :manage_url, TD::Types::String
    attribute :is_bot_paused, TD::Types::Bool
    attribute :can_bot_reply, TD::Types::Bool
  end
end
