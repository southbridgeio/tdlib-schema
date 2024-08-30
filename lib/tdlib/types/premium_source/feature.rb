module TD::Types
  # A user tried to use a Premium feature.
  #
  # @attr feature [TD::Types::PremiumFeature] The used feature.
  class PremiumSource::Feature < PremiumSource
    attribute :feature, TD::Types::PremiumFeature
  end
end
