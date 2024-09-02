module TD::Types
  # Contains full information about a supergroup or channel.
  #
  # @attr photo [TD::Types::ChatPhoto, nil] Chat photo; may be null if empty or unknown.
  #   If non-null, then it is the same photo as in chat.photo.
  # @attr description [TD::Types::String] Supergroup or channel description.
  # @attr member_count [Integer] Number of members in the supergroup or channel; 0 if unknown.
  # @attr administrator_count [Integer] Number of privileged users in the supergroup or channel; 0 if unknown.
  # @attr restricted_count [Integer] Number of restricted users in the supergroup; 0 if unknown.
  # @attr banned_count [Integer] Number of users banned from chat; 0 if unknown.
  # @attr linked_chat_id [Integer] Chat identifier of a discussion group for the channel, or a channel, for which the
  #   supergroup is the designated discussion group; 0 if none or unknown.
  # @attr slow_mode_delay [Integer] Delay between consecutive sent messages for non-administrator supergroup members,
  #   in seconds.
  # @attr slow_mode_delay_expires_in [Float] Time left before next message can be sent in the supergroup, in seconds.
  #   An {TD::Types::Update::SupergroupFullInfo} update is not triggered when value of this field changes, but both new
  #   and old values are non-zero.
  # @attr can_enable_paid_reaction [Boolean] True, if paid reaction can be enabled in the channel chat; for channels
  #   only.
  # @attr can_get_members [Boolean] True, if members of the chat can be retrieved via getSupergroupMembers or
  #   searchChatMembers.
  # @attr has_hidden_members [Boolean] True, if non-administrators can receive only administrators and bots using
  #   getSupergroupMembers or searchChatMembers.
  # @attr can_hide_members [Boolean] True, if non-administrators and non-bots can be hidden in responses to
  #   getSupergroupMembers and searchChatMembers for non-administrators.
  # @attr can_set_sticker_set [Boolean] True, if the supergroup sticker set can be changed.
  # @attr can_set_location [Boolean] True, if the supergroup location can be changed.
  # @attr can_get_statistics [Boolean] True, if the supergroup or channel statistics are available.
  # @attr can_get_revenue_statistics [Boolean] True, if the supergroup or channel revenue statistics are available.
  # @attr can_get_star_revenue_statistics [Boolean] True, if the supergroup or channel Telegram Star revenue statistics
  #   are available.
  # @attr can_toggle_aggressive_anti_spam [Boolean] True, if aggressive anti-spam checks can be enabled or disabled in
  #   the supergroup.
  # @attr is_all_history_available [Boolean] True, if new chat members will have access to old messages.
  #   In public, discussion, of forum groups and all channels, old messages are always available, so this option
  #   affects only private non-forum supergroups without a linked chat.
  #   The value of this field is only available to chat administrators.
  # @attr can_have_sponsored_messages [Boolean] True, if the chat can have sponsored messages.
  #   The value of this field is only available to the owner of the chat.
  # @attr has_aggressive_anti_spam_enabled [Boolean] True, if aggressive anti-spam checks are enabled in the
  #   supergroup.
  #   The value of this field is only available to chat administrators.
  # @attr has_paid_media_allowed [Boolean] True, if paid media can be sent and forwarded to the channel chat; for
  #   channels only.
  # @attr has_pinned_stories [Boolean] True, if the supergroup or channel has pinned stories.
  # @attr my_boost_count [Integer] Number of times the current user boosted the supergroup or channel.
  # @attr unrestrict_boost_count [Integer] Number of times the supergroup must be boosted by a user to ignore slow mode
  #   and chat permission restrictions; 0 if unspecified.
  # @attr sticker_set_id [Integer] Identifier of the supergroup sticker set that must be shown before user sticker
  #   sets; 0 if none.
  # @attr custom_emoji_sticker_set_id [Integer] Identifier of the custom emoji sticker set that can be used in the
  #   supergroup without Telegram Premium subscription; 0 if none.
  # @attr location [TD::Types::ChatLocation, nil] Location to which the supergroup is connected; may be null if none.
  # @attr invite_link [TD::Types::ChatInviteLink, nil] Primary invite link for the chat; may be null.
  #   For chat administrators with can_invite_users right only.
  # @attr bot_commands [Array<TD::Types::BotCommands>] List of commands of bots in the group.
  # @attr upgraded_from_basic_group_id [Integer] Identifier of the basic group from which supergroup was upgraded; 0 if
  #   none.
  # @attr upgraded_from_max_message_id [Integer] Identifier of the last message in the basic group from which
  #   supergroup was upgraded; 0 if none.
  class SupergroupFullInfo < Base
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :description, TD::Types::String
    attribute :member_count, TD::Types::Coercible::Integer
    attribute :administrator_count, TD::Types::Coercible::Integer
    attribute :restricted_count, TD::Types::Coercible::Integer
    attribute :banned_count, TD::Types::Coercible::Integer
    attribute :linked_chat_id, TD::Types::Coercible::Integer
    attribute :slow_mode_delay, TD::Types::Coercible::Integer
    attribute :slow_mode_delay_expires_in, TD::Types::Coercible::Float
    attribute :can_enable_paid_reaction, TD::Types::Bool
    attribute :can_get_members, TD::Types::Bool
    attribute :has_hidden_members, TD::Types::Bool
    attribute :can_hide_members, TD::Types::Bool
    attribute :can_set_sticker_set, TD::Types::Bool
    attribute :can_set_location, TD::Types::Bool
    attribute :can_get_statistics, TD::Types::Bool
    attribute :can_get_revenue_statistics, TD::Types::Bool
    attribute :can_get_star_revenue_statistics, TD::Types::Bool
    attribute :can_toggle_aggressive_anti_spam, TD::Types::Bool
    attribute :is_all_history_available, TD::Types::Bool
    attribute :can_have_sponsored_messages, TD::Types::Bool
    attribute :has_aggressive_anti_spam_enabled, TD::Types::Bool
    attribute :has_paid_media_allowed, TD::Types::Bool
    attribute :has_pinned_stories, TD::Types::Bool
    attribute :my_boost_count, TD::Types::Coercible::Integer
    attribute :unrestrict_boost_count, TD::Types::Coercible::Integer
    attribute :sticker_set_id, TD::Types::Coercible::Integer
    attribute :custom_emoji_sticker_set_id, TD::Types::Coercible::Integer
    attribute :location, TD::Types::ChatLocation.optional.default(nil)
    attribute :invite_link, TD::Types::ChatInviteLink.optional.default(nil)
    attribute :bot_commands, TD::Types::Array.of(TD::Types::BotCommands)
    attribute :upgraded_from_basic_group_id, TD::Types::Coercible::Integer
    attribute :upgraded_from_max_message_id, TD::Types::Coercible::Integer
  end
end
