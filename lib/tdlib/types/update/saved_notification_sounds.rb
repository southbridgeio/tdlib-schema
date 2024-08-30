module TD::Types
  # The list of saved notification sounds was updated.
  # This update may not be sent until information about a notification sound was requested for the first time.
  #
  # @attr notification_sound_ids [Array<Integer>] The new list of identifiers of saved notification sounds.
  class Update::SavedNotificationSounds < Update
    attribute :notification_sound_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
