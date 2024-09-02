module TD::Types
  # A user tried to use a Business feature.
  #
  # @attr feature [TD::Types::BusinessFeature] The used feature; pass null if none specific feature was used.
  class PremiumSource::BusinessFeature < PremiumSource
    attribute :feature, TD::Types::BusinessFeature
  end
end
