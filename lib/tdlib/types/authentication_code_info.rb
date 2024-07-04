module TD::Types
  # Information about the authentication code that was sent.
  #
  # @attr phone_number [TD::Types::String] A phone number that is being authenticated.
  # @attr type [TD::Types::AuthenticationCodeType] The way the code was sent to the user.
  # @attr next_type [TD::Types::AuthenticationCodeType, nil] The way the next code will be sent to the user; may be
  #   null.
  # @attr timeout [Integer] Timeout before the code can be re-sent, in seconds.
  class AuthenticationCodeInfo < Base
    attribute :phone_number, TD::Types::String
    attribute :type, TD::Types::AuthenticationCodeType
    attribute :next_type, TD::Types::AuthenticationCodeType.optional.default(nil)
    attribute :timeout, TD::Types::Coercible::Integer
  end
end
