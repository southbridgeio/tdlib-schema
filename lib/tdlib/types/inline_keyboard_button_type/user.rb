module TD::Types
  # A button with a user reference to be handled in the same way as textEntityTypeMentionName entities.
  #
  # @attr user_id [Integer] User identifier.
  class InlineKeyboardButtonType::User < InlineKeyboardButtonType
    attribute :user_id, TD::Types::Coercible::Integer
  end
end
