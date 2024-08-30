module TD::Types
  # Describes a source from which the Premium features screen is opened.
  class PremiumSource < Base
    %w[
      limit_exceeded
      feature
      business_feature
      story_feature
      link
      settings
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/premium_source/#{type}"
    end
  end
end
