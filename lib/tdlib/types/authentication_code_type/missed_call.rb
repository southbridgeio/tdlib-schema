module TD::Types
  # An authentication code is delivered by an immediately canceled call to the specified phone number.
  # The last digits of the phone number that calls are the code that must be entered manually by the user.
  #
  # @attr phone_number_prefix [TD::Types::String] Prefix of the phone number from which the call will be made.
  # @attr length [Integer] Number of digits in the code, excluding the prefix.
  class AuthenticationCodeType::MissedCall < AuthenticationCodeType
    attribute :phone_number_prefix, TD::Types::String
    attribute :length, TD::Types::Coercible::Integer
  end
end
