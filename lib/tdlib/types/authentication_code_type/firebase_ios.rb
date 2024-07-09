module TD::Types
  # A digit-only authentication code is delivered via Firebase Authentication to the official iOS application.
  #
  # @attr receipt [TD::Types::String] Receipt of successful application token validation to compare with receipt from
  #   push notification.
  # @attr push_timeout [Integer] Time after the next authentication method is supposed to be used if verification push
  #   notification isn't received, in seconds.
  # @attr length [Integer] Length of the code.
  class AuthenticationCodeType::FirebaseIos < AuthenticationCodeType
    attribute :receipt, TD::Types::String
    attribute :push_timeout, TD::Types::Coercible::Integer
    attribute :length, TD::Types::Coercible::Integer
  end
end
