module TD::Types
  # Describes a promotion animation for a Premium feature.
  #
  # @attr feature [TD::Types::PremiumFeature] Premium feature.
  # @attr animation [TD::Types::Animation] Promotion animation for the feature.
  class PremiumFeaturePromotionAnimation < Base
    attribute :feature, TD::Types::PremiumFeature
    attribute :animation, TD::Types::Animation
  end
end
