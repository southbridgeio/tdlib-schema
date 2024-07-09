module TD::Types
  # An authentication code is delivered by an immediately canceled call to the specified phone number.
  # The phone number that calls is the code that must be entered automatically.
  #
  # @attr pattern [TD::Types::String] Pattern of the phone number from which the call will be made.
  class AuthenticationCodeType::FlashCall < AuthenticationCodeType
    attribute :pattern, TD::Types::String
  end
end
