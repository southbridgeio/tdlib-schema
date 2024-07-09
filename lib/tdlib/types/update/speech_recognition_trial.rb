module TD::Types
  # The parameters of speech recognition without Telegram Premium subscription has changed.
  #
  # @attr max_media_duration [Integer] The maximum allowed duration of media for speech recognition without Telegram
  #   Premium subscription, in seconds.
  # @attr weekly_count [Integer] The total number of allowed speech recognitions per week; 0 if none.
  # @attr left_count [Integer] Number of left speech recognition attempts this week.
  # @attr next_reset_date [Integer] Point in time (Unix timestamp) when the weekly number of tries will reset; 0 if
  #   unknown.
  class Update::SpeechRecognitionTrial < Update
    attribute :max_media_duration, TD::Types::Coercible::Integer
    attribute :weekly_count, TD::Types::Coercible::Integer
    attribute :left_count, TD::Types::Coercible::Integer
    attribute :next_reset_date, TD::Types::Coercible::Integer
  end
end
