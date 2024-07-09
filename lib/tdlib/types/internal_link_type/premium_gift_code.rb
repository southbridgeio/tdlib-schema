module TD::Types
  # The link is a link with a Telegram Premium gift code.
  # Call checkPremiumGiftCode with the given code to process the link.
  # If the code is valid and the user wants to apply it, then call applyPremiumGiftCode.
  #
  # @attr code [TD::Types::String] The Telegram Premium gift code.
  class InternalLinkType::PremiumGiftCode < InternalLinkType
    attribute :code, TD::Types::String
  end
end
