module TD::Types
  # A limit was exceeded.
  #
  # @attr limit_type [TD::Types::PremiumLimitType] Type of the exceeded limit.
  class PremiumSource::LimitExceeded < PremiumSource
    attribute :limit_type, TD::Types::PremiumLimitType
  end
end
