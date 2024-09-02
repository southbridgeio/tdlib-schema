module TD::Types
  # Contains information about a limit, increased for Premium users.
  #
  # @attr type [TD::Types::PremiumLimitType] The type of the limit.
  # @attr default_value [Integer] Default value of the limit.
  # @attr premium_value [Integer] Value of the limit for Premium users.
  class PremiumLimit < Base
    attribute :type, TD::Types::PremiumLimitType
    attribute :default_value, TD::Types::Coercible::Integer
    attribute :premium_value, TD::Types::Coercible::Integer
  end
end
