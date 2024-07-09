module TD::Types
  # Describes a promotion animation for a Business feature.
  #
  # @attr feature [TD::Types::BusinessFeature] Business feature.
  # @attr animation [TD::Types::Animation] Promotion animation for the feature.
  class BusinessFeaturePromotionAnimation < Base
    attribute :feature, TD::Types::BusinessFeature
    attribute :animation, TD::Types::Animation
  end
end
