module TD::Types
  # Contains information about Telegram Premium giveaway.
  class PremiumGiveawayInfo < Base
    %w[
      ongoing
      completed
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/premium_giveaway_info/#{type}"
    end
  end
end
