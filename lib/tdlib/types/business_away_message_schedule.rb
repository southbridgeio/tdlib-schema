module TD::Types
  # Describes conditions for sending of away messages by a Telegram Business account.
  class BusinessAwayMessageSchedule < Base
    %w[
      always
      outside_of_opening_hours
      custom
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/business_away_message_schedule/#{type}"
    end
  end
end
