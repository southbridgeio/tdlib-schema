module TD::Types
  # A digit-only authentication code is delivered via a phone call to the specified phone number.
  #
  # @attr length [Integer] Length of the code.
  class AuthenticationCodeType::Call < AuthenticationCodeType
    attribute :length, TD::Types::Coercible::Integer
  end
end
