module TD::Types
  # A user opened an internal link of the type internalLinkTypePremiumFeatures.
  #
  # @attr referrer [TD::Types::String] The referrer from the link.
  class PremiumSource::Link < PremiumSource
    attribute :referrer, TD::Types::String
  end
end
