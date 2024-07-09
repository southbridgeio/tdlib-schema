module TD::Types
  # Describes a notification sound in MP3 format.
  #
  # @attr id [Integer] Unique identifier of the notification sound.
  # @attr duration [Integer] Duration of the sound, in seconds.
  # @attr date [Integer] Point in time (Unix timestamp) when the sound was created.
  # @attr title [TD::Types::String] Title of the notification sound.
  # @attr data [TD::Types::String] Arbitrary data, defined while the sound was uploaded.
  # @attr sound [TD::Types::File] File containing the sound.
  class NotificationSound < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :duration, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :title, TD::Types::String
    attribute :data, TD::Types::String
    attribute :sound, TD::Types::File
  end
end
