module TD::Types
  # Contains a list of notification sounds.
  #
  # @attr notification_sounds [Array<TD::Types::NotificationSound>] A list of notification sounds.
  class NotificationSounds < Base
    attribute :notification_sounds, TD::Types::Array.of(TD::Types::NotificationSound)
  end
end
