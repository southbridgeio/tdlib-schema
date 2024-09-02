module TD::Types
  # Confirms ownership of a phone number to prevent account deletion while handling links of the type
  #   internalLinkTypePhoneNumberConfirmation.
  #
  # @attr hash [TD::Types::String] Hash value from the link.
  class PhoneNumberCodeType::ConfirmOwnership < PhoneNumberCodeType
    attribute :hash, TD::Types::String
  end
end
