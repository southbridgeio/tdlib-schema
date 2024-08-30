module TD::Types
  # Represents a supergroup or channel with zero or more members (subscribers in the case of channels).
  # From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and
  #   see the list of members, and posts from all administrators use the name and photo of the channel instead of individual
  #   names and profile photos.
  # Unlike supergroups, channels can have an unlimited number of subscribers.
  #
  # @attr id [Integer] Supergroup or channel identifier.
  # @attr usernames [TD::Types::Usernames, nil] Usernames of the supergroup or channel; may be null.
  # @attr date [Integer] Point in time (Unix timestamp) when the current user joined, or the point in time when the
  #   supergroup or channel was created, in case the user is not a member.
  # @attr status [TD::Types::ChatMemberStatus] Status of the current user in the supergroup or channel; custom title
  #   will always be empty.
  # @attr member_count [Integer] Number of members in the supergroup or channel; 0 if unknown.
  #   Currently, it is guaranteed to be known only if the supergroup or channel was received through
  #   getChatSimilarChats, getChatsToSendStories, getCreatedPublicChats, getGroupsInCommon, getInactiveSupergroupChats,
  #   getRecommendedChats, getSuitableDiscussionChats, getUserPrivacySettingRules, getVideoChatAvailableParticipants,
  #   searchChatsNearby, searchPublicChats, or in chatFolderInviteLinkInfo.missing_chat_ids, or in
  #   userFullInfo.personal_chat_id, or for chats with messages or stories from {TD::Types::PublicForwards} and foundStories.
  # @attr boost_level [Integer] Approximate boost level for the chat.
  # @attr has_linked_chat [Boolean] True, if the channel has a discussion group, or the supergroup is the designated
  #   discussion group for a channel.
  # @attr has_location [Boolean] True, if the supergroup is connected to a location, i.e.
  #   the supergroup is a location-based supergroup.
  # @attr sign_messages [Boolean] True, if messages sent to the channel contains name of the sender.
  #   This field is only applicable to channels.
  # @attr show_message_sender [Boolean] True, if messages sent to the channel have information about the sender user.
  #   This field is only applicable to channels.
  # @attr join_to_send_messages [Boolean] True, if users need to join the supergroup before they can send messages.
  #   Always true for channels and non-discussion supergroups.
  # @attr join_by_request [Boolean] True, if all users directly joining the supergroup need to be approved by
  #   supergroup administrators.
  #   Always false for channels and supergroups without username, location, or a linked chat.
  # @attr is_slow_mode_enabled [Boolean] True, if the slow mode is enabled in the supergroup.
  # @attr is_channel [Boolean] True, if the supergroup is a channel.
  # @attr is_broadcast_group [Boolean] True, if the supergroup is a broadcast group, i.e.
  #   only administrators can send messages and there is no limit on the number of members.
  # @attr is_forum [Boolean] True, if the supergroup is a forum with topics.
  # @attr is_verified [Boolean] True, if the supergroup or channel is verified.
  # @attr has_sensitive_content [Boolean] True, if content of media messages in the supergroup or channel chat must be
  #   hidden with 18+ spoiler.
  # @attr restriction_reason [TD::Types::String] If non-empty, contains a human-readable description of the reason why
  #   access to this supergroup or channel must be restricted.
  # @attr is_scam [Boolean] True, if many users reported this supergroup or channel as a scam.
  # @attr is_fake [Boolean] True, if many users reported this supergroup or channel as a fake account.
  # @attr has_active_stories [Boolean] True, if the supergroup or channel has non-expired stories available to the
  #   current user.
  # @attr has_unread_active_stories [Boolean] True, if the supergroup or channel has unread non-expired stories
  #   available to the current user.
  class Supergroup < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :usernames, TD::Types::Usernames.optional.default(nil)
    attribute :date, TD::Types::Coercible::Integer
    attribute :status, TD::Types::ChatMemberStatus
    attribute :member_count, TD::Types::Coercible::Integer
    attribute :boost_level, TD::Types::Coercible::Integer
    attribute :has_linked_chat, TD::Types::Bool
    attribute :has_location, TD::Types::Bool
    attribute :sign_messages, TD::Types::Bool
    attribute :show_message_sender, TD::Types::Bool
    attribute :join_to_send_messages, TD::Types::Bool
    attribute :join_by_request, TD::Types::Bool
    attribute :is_slow_mode_enabled, TD::Types::Bool
    attribute :is_channel, TD::Types::Bool
    attribute :is_broadcast_group, TD::Types::Bool
    attribute :is_forum, TD::Types::Bool
    attribute :is_verified, TD::Types::Bool
    attribute :has_sensitive_content, TD::Types::Bool
    attribute :restriction_reason, TD::Types::String
    attribute :is_scam, TD::Types::Bool
    attribute :is_fake, TD::Types::Bool
    attribute :has_active_stories, TD::Types::Bool
    attribute :has_unread_active_stories, TD::Types::Bool
  end
end
