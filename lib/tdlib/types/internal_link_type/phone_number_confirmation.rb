module TD::Types
  # The link can be used to confirm ownership of a phone number to prevent account deletion.
  # Call sendPhoneNumberCode with the given phone number and with phoneNumberCodeTypeConfirmOwnership with the given
  #   hash to process the link.
  # If succeeded, call checkPhoneNumberCode to check entered by the user code, or resendPhoneNumberCode to resend it.
  #
  # @attr hash [TD::Types::String] Hash value from the link.
  # @attr phone_number [TD::Types::String] Phone number value from the link.
  class InternalLinkType::PhoneNumberConfirmation < InternalLinkType
    attribute :hash, TD::Types::String
    attribute :phone_number, TD::Types::String
  end
end
