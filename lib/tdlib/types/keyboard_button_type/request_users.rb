module TD::Types
  # A button that requests users to be shared by the current user; available only in private chats.
  # Use the method shareUsersWithBot to complete the request.
  #
  # @attr id [Integer] Unique button identifier.
  # @attr restrict_user_is_bot [Boolean] True, if the shared users must or must not be bots.
  # @attr user_is_bot [Boolean] True, if the shared users must be bots; otherwise, the shared users must not be bots.
  #   Ignored if restrict_user_is_bot is false.
  # @attr restrict_user_is_premium [Boolean] True, if the shared users must or must not be Telegram Premium users.
  # @attr user_is_premium [Boolean] True, if the shared users must be Telegram Premium users; otherwise, the shared
  #   users must not be Telegram Premium users.
  #   Ignored if restrict_user_is_premium is false.
  # @attr max_quantity [Integer] The maximum number of users to share.
  # @attr request_name [Boolean] Pass true to request name of the users; bots only.
  # @attr request_username [Boolean] Pass true to request username of the users; bots only.
  # @attr request_photo [Boolean] Pass true to request photo of the users; bots only.
  class KeyboardButtonType::RequestUsers < KeyboardButtonType
    attribute :id, TD::Types::Coercible::Integer
    attribute :restrict_user_is_bot, TD::Types::Bool
    attribute :user_is_bot, TD::Types::Bool
    attribute :restrict_user_is_premium, TD::Types::Bool
    attribute :user_is_premium, TD::Types::Bool
    attribute :max_quantity, TD::Types::Coercible::Integer
    attribute :request_name, TD::Types::Bool
    attribute :request_username, TD::Types::Bool
    attribute :request_photo, TD::Types::Bool
  end
end
