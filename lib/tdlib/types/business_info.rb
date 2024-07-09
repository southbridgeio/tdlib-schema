module TD::Types
  # Contains information about a Telegram Business account.
  #
  # @attr location [TD::Types::BusinessLocation, nil] Location of the business; may be null if none.
  # @attr opening_hours [TD::Types::BusinessOpeningHours, nil] Opening hours of the business; may be null if none.
  #   The hours are guaranteed to be valid and has already been split by week days.
  # @attr local_opening_hours [TD::Types::BusinessOpeningHours, nil] Opening hours of the business in the local time;
  #   may be null if none.
  #   The hours are guaranteed to be valid and has already been split by week days.
  #   Local time zone identifier will be empty.
  #   An {TD::Types::Update::UserFullInfo} update is not triggered when value of this field changes.
  # @attr next_open_in [Integer] Time left before the business will open the next time, in seconds; 0 if unknown.
  #   An {TD::Types::Update::UserFullInfo} update is not triggered when value of this field changes.
  # @attr next_close_in [Integer] Time left before the business will close the next time, in seconds; 0 if unknown.
  #   An {TD::Types::Update::UserFullInfo} update is not triggered when value of this field changes.
  # @attr greeting_message_settings [TD::Types::BusinessGreetingMessageSettings, nil] The greeting message; may be null
  #   if none or the Business account is not of the current user.
  # @attr away_message_settings [TD::Types::BusinessAwayMessageSettings, nil] The away message; may be null if none or
  #   the Business account is not of the current user.
  # @attr start_page [TD::Types::BusinessStartPage, nil] Information about start page of the account; may be null if
  #   none.
  class BusinessInfo < Base
    attribute :location, TD::Types::BusinessLocation.optional.default(nil)
    attribute :opening_hours, TD::Types::BusinessOpeningHours.optional.default(nil)
    attribute :local_opening_hours, TD::Types::BusinessOpeningHours.optional.default(nil)
    attribute :next_open_in, TD::Types::Coercible::Integer
    attribute :next_close_in, TD::Types::Coercible::Integer
    attribute :greeting_message_settings, TD::Types::BusinessGreetingMessageSettings.optional.default(nil)
    attribute :away_message_settings, TD::Types::BusinessAwayMessageSettings.optional.default(nil)
    attribute :start_page, TD::Types::BusinessStartPage.optional.default(nil)
  end
end
