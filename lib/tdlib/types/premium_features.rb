module TD::Types
  # Contains information about features, available to Premium users.
  #
  # @attr features [Array<TD::Types::PremiumFeature>] The list of available features.
  # @attr limits [Array<TD::Types::PremiumLimit>] The list of limits, increased for Premium users.
  # @attr payment_link [TD::Types::InternalLinkType, nil] An internal link to be opened to pay for Telegram Premium if
  #   store payment isn't possible; may be null if direct payment isn't available.
  class PremiumFeatures < Base
    attribute :features, TD::Types::Array.of(TD::Types::PremiumFeature)
    attribute :limits, TD::Types::Array.of(TD::Types::PremiumLimit)
    attribute :payment_link, TD::Types::InternalLinkType.optional.default(nil)
  end
end
