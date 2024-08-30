module TD::Types
  # A user tried to use a Premium story feature.
  #
  # @attr feature [TD::Types::PremiumStoryFeature] The used feature.
  class PremiumSource::StoryFeature < PremiumSource
    attribute :feature, TD::Types::PremiumStoryFeature
  end
end
