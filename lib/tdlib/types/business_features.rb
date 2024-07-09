module TD::Types
  # Contains information about features, available to Business user accounts.
  #
  # @attr features [Array<TD::Types::BusinessFeature>] The list of available business features.
  class BusinessFeatures < Base
    attribute :features, TD::Types::Array.of(TD::Types::BusinessFeature)
  end
end
