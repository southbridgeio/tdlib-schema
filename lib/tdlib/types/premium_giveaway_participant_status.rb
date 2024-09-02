module TD::Types
  # Contains information about status of a user in a Telegram Premium giveaway.
  class PremiumGiveawayParticipantStatus < Base
    %w[
      eligible
      participating
      already_was_member
      administrator
      disallowed_country
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/premium_giveaway_participant_status/#{type}"
    end
  end
end
