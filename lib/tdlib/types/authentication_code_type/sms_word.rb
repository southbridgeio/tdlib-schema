module TD::Types
  # An authentication code is a word delivered via an SMS message to the specified phone number; non-official
  #   applications may not receive this type of code.
  #
  # @attr first_letter [TD::Types::String] The first letters of the word if known.
  class AuthenticationCodeType::SmsWord < AuthenticationCodeType
    attribute :first_letter, TD::Types::String
  end
end
