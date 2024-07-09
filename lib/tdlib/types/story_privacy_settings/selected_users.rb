module TD::Types
  # The story can be viewed by certain specified users.
  #
  # @attr user_ids [Array<Integer>, nil] Identifiers of the users; always unknown and empty for non-owned stories.
  class StoryPrivacySettings::SelectedUsers < StoryPrivacySettings
    attribute :user_ids, TD::Types::Array.of(TD::Types::Coercible::Integer).optional.default(nil)
  end
end
