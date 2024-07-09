module TD::Types
  # The story can be viewed by everyone.
  #
  # @attr except_user_ids [Array<Integer>, nil] Identifiers of the users that can't see the story; always unknown and
  #   empty for non-owned stories.
  class StoryPrivacySettings::Everyone < StoryPrivacySettings
    attribute :except_user_ids, TD::Types::Array.of(TD::Types::Coercible::Integer).optional.default(nil)
  end
end
