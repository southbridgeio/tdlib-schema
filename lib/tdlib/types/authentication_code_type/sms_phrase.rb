module TD::Types
  # An authentication code is a phrase from multiple words delivered via an SMS message to the specified phone number;
  #   non-official applications may not receive this type of code.
  #
  # @attr first_word [TD::Types::String] The first word of the phrase if known.
  class AuthenticationCodeType::SmsPhrase < AuthenticationCodeType
    attribute :first_word, TD::Types::String
  end
end
