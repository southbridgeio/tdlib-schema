module TD::Types
  # The link can be used to confirm ownership of a phone number to prevent account deletion.
  # Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link.
  #
  # @attr hash [TD::Types::String] Hash value from the link.
  # @attr phone_number [TD::Types::String] Phone number value from the link.
  class InternalLinkType::PhoneNumberConfirmation < InternalLinkType
    attribute :hash, TD::Types::String
    attribute :phone_number, TD::Types::String
  end
end
