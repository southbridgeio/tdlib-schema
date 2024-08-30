module TD::Types
  # The link is a link to the Premium features screen of the application from which the user can subscribe to Telegram
  #   Premium.
  # Call getPremiumFeatures with the given referrer to process the link.
  #
  # @attr referrer [TD::Types::String] Referrer specified in the link.
  class InternalLinkType::PremiumFeatures < InternalLinkType
    attribute :referrer, TD::Types::String
  end
end
