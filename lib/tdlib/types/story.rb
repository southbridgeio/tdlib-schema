module TD::Types
  # Represents a story.
  #
  # @attr id [Integer] Unique story identifier among stories of the given sender.
  # @attr sender_chat_id [Integer] Identifier of the chat that posted the story.
  # @attr sender_id [TD::Types::MessageSender, nil] Identifier of the sender of the story; may be null if the story is
  #   posted on behalf of the sender_chat_id.
  # @attr date [Integer] Point in time (Unix timestamp) when the story was published.
  # @attr is_being_sent [Boolean] True, if the story is being sent by the current user.
  # @attr is_being_edited [Boolean] True, if the story is being edited by the current user.
  # @attr is_edited [Boolean] True, if the story was edited.
  # @attr is_posted_to_chat_page [Boolean] True, if the story is saved in the sender's profile and will be available
  #   there after expiration.
  # @attr is_visible_only_for_self [Boolean] True, if the story is visible only for the current user.
  # @attr can_be_deleted [Boolean] True, if the story can be deleted.
  # @attr can_be_edited [Boolean] True, if the story can be edited.
  # @attr can_be_forwarded [Boolean] True, if the story can be forwarded as a message.
  #   Otherwise, screenshots and saving of the story content must be also forbidden.
  # @attr can_be_replied [Boolean] True, if the story can be replied in the chat with the story sender.
  # @attr can_toggle_is_posted_to_chat_page [Boolean] True, if the story's is_posted_to_chat_page value can be changed.
  # @attr can_get_statistics [Boolean] True, if the story statistics are available through getStoryStatistics.
  # @attr can_get_interactions [Boolean] True, if interactions with the story can be received through
  #   getStoryInteractions.
  # @attr has_expired_viewers [Boolean] True, if users viewed the story can't be received, because the story has
  #   expired more than getOption("story_viewers_expiration_delay") seconds ago.
  # @attr repost_info [TD::Types::StoryRepostInfo, nil] Information about the original story; may be null if the story
  #   wasn't reposted.
  # @attr interaction_info [TD::Types::StoryInteractionInfo, nil] Information about interactions with the story; may be
  #   null if the story isn't owned or there were no interactions.
  # @attr chosen_reaction_type [TD::Types::ReactionType, nil] Type of the chosen reaction; may be null if none.
  # @attr privacy_settings [TD::Types::StoryPrivacySettings] Privacy rules affecting story visibility; may be
  #   approximate for non-owned stories.
  # @attr content [TD::Types::StoryContent] Content of the story.
  # @attr areas [Array<TD::Types::StoryArea>] Clickable areas to be shown on the story content.
  # @attr caption [TD::Types::FormattedText] Caption of the story.
  class Story < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :sender_chat_id, TD::Types::Coercible::Integer
    attribute :sender_id, TD::Types::MessageSender.optional.default(nil)
    attribute :date, TD::Types::Coercible::Integer
    attribute :is_being_sent, TD::Types::Bool
    attribute :is_being_edited, TD::Types::Bool
    attribute :is_edited, TD::Types::Bool
    attribute :is_posted_to_chat_page, TD::Types::Bool
    attribute :is_visible_only_for_self, TD::Types::Bool
    attribute :can_be_deleted, TD::Types::Bool
    attribute :can_be_edited, TD::Types::Bool
    attribute :can_be_forwarded, TD::Types::Bool
    attribute :can_be_replied, TD::Types::Bool
    attribute :can_toggle_is_posted_to_chat_page, TD::Types::Bool
    attribute :can_get_statistics, TD::Types::Bool
    attribute :can_get_interactions, TD::Types::Bool
    attribute :has_expired_viewers, TD::Types::Bool
    attribute :repost_info, TD::Types::StoryRepostInfo.optional.default(nil)
    attribute :interaction_info, TD::Types::StoryInteractionInfo.optional.default(nil)
    attribute :chosen_reaction_type, TD::Types::ReactionType.optional.default(nil)
    attribute :privacy_settings, TD::Types::StoryPrivacySettings
    attribute :content, TD::Types::StoryContent
    attribute :areas, TD::Types::Array.of(TD::Types::StoryArea)
    attribute :caption, TD::Types::FormattedText
  end
end
