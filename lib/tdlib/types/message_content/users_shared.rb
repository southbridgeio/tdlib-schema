module TD::Types
  # The current user shared users, which were requested by the bot.
  #
  # @attr users [Array<TD::Types::SharedUser>] The shared users.
  # @attr button_id [Integer] Identifier of the keyboard button with the request.
  class MessageContent::UsersShared < MessageContent
    attribute :users, TD::Types::Array.of(TD::Types::SharedUser)
    attribute :button_id, TD::Types::Coercible::Integer
  end
end
