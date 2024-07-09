module TD::Types
  # A digit-only authentication code is delivered via a private Telegram message, which can be viewed from another
  #   active session.
  #
  # @attr length [Integer] Length of the code.
  class AuthenticationCodeType::TelegramMessage < AuthenticationCodeType
    attribute :length, TD::Types::Coercible::Integer
  end
end
