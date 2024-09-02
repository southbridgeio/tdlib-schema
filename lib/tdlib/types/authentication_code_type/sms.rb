module TD::Types
  # A digit-only authentication code is delivered via an SMS message to the specified phone number; non-official
  #   applications may not receive this type of code.
  #
  # @attr length [Integer] Length of the code.
  class AuthenticationCodeType::Sms < AuthenticationCodeType
    attribute :length, TD::Types::Coercible::Integer
  end
end
