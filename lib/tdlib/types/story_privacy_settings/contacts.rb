module TD::Types
  # The story can be viewed by all contacts except chosen users.
  #
  # @attr except_user_ids [Array<Integer>, nil] User identifiers of the contacts that can't see the story; always
  #   unknown and empty for non-owned stories.
  class StoryPrivacySettings::Contacts < StoryPrivacySettings
    attribute :except_user_ids, TD::Types::Array.of(TD::Types::Coercible::Integer).optional.default(nil)
  end
end
