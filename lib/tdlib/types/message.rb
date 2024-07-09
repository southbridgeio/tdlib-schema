module TD::Types
  # Describes a message.
  #
  # @attr id [Integer] Message identifier; unique for the chat to which the message belongs.
  # @attr sender_id [TD::Types::MessageSender] Identifier of the sender of the message.
  # @attr chat_id [Integer] Chat identifier.
  # @attr sending_state [TD::Types::MessageSendingState, nil] The sending state of the message; may be null if the
  #   message isn't being sent and didn't fail to be sent.
  # @attr scheduling_state [TD::Types::MessageSchedulingState, nil] The scheduling state of the message; may be null if
  #   the message isn't scheduled.
  # @attr is_outgoing [Boolean] True, if the message is outgoing.
  # @attr is_pinned [Boolean] True, if the message is pinned.
  # @attr is_from_offline [Boolean] True, if the message was sent because of a scheduled action by the message sender,
  #   for example, as away, or greeting service message.
  # @attr can_be_edited [Boolean] True, if the message can be edited.
  #   For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used
  #   with this message by the application.
  # @attr can_be_forwarded [Boolean] True, if the message can be forwarded.
  # @attr can_be_replied_in_another_chat [Boolean] True, if the message can be replied in another chat or topic.
  # @attr can_be_saved [Boolean] True, if content of the message can be saved locally or copied.
  # @attr can_be_deleted_only_for_self [Boolean] True, if the message can be deleted only for the current user while
  #   other users will continue to see it.
  # @attr can_be_deleted_for_all_users [Boolean] True, if the message can be deleted for all users.
  # @attr can_get_added_reactions [Boolean] True, if the list of added reactions is available through
  #   getMessageAddedReactions.
  # @attr can_get_statistics [Boolean] True, if the message statistics are available through getMessageStatistics.
  # @attr can_get_message_thread [Boolean] True, if information about the message thread is available through
  #   getMessageThread and getMessageThreadHistory.
  # @attr can_get_read_date [Boolean] True, if read date of the message can be received through getMessageReadDate.
  # @attr can_get_viewers [Boolean] True, if chat members already viewed the message can be received through
  #   getMessageViewers.
  # @attr can_get_media_timestamp_links [Boolean] True, if media timestamp links can be generated for media timestamp
  #   entities in the message text, caption or web page description through getMessageLink.
  # @attr can_report_reactions [Boolean] True, if reactions on the message can be reported through
  #   reportMessageReactions.
  # @attr has_timestamped_media [Boolean] True, if media timestamp entities refers to a media in this message as
  #   opposed to a media in the replied message.
  # @attr is_channel_post [Boolean] True, if the message is a channel post.
  #   All messages to channels are channel posts, all other messages are not channel posts.
  # @attr is_topic_message [Boolean] True, if the message is a forum topic message.
  # @attr contains_unread_mention [Boolean] True, if the message contains an unread mention for the current user.
  # @attr date [Integer] Point in time (Unix timestamp) when the message was sent.
  # @attr edit_date [Integer] Point in time (Unix timestamp) when the message was last edited.
  # @attr forward_info [TD::Types::MessageForwardInfo, nil] Information about the initial message sender; may be null
  #   if none or unknown.
  # @attr import_info [TD::Types::MessageImportInfo, nil] Information about the initial message for messages created
  #   with importMessages; may be null if the message isn't imported.
  # @attr interaction_info [TD::Types::MessageInteractionInfo, nil] Information about interactions with the message;
  #   may be null if none.
  # @attr unread_reactions [Array<TD::Types::UnreadReaction>] Information about unread reactions added to the message.
  # @attr fact_check [TD::Types::FactCheck, nil] Information about fact-check added to the message; may be null if
  #   none.
  # @attr reply_to [TD::Types::MessageReplyTo, nil] Information about the message or the story this message is replying
  #   to; may be null if none.
  # @attr message_thread_id [Integer] If non-zero, the identifier of the message thread the message belongs to; unique
  #   within the chat to which the message belongs.
  # @attr saved_messages_topic_id [Integer] Identifier of the Saved Messages topic for the message; 0 for messages not
  #   from Saved Messages.
  # @attr self_destruct_type [TD::Types::MessageSelfDestructType, nil] The message's self-destruct type; may be null if
  #   none.
  # @attr self_destruct_in [Float] Time left before the message self-destruct timer expires, in seconds; 0 if
  #   self-destruction isn't scheduled yet.
  # @attr auto_delete_in [Float] Time left before the message will be automatically deleted by message_auto_delete_time
  #   setting of the chat, in seconds; 0 if never.
  # @attr via_bot_user_id [Integer] If non-zero, the user identifier of the inline bot through which this message was
  #   sent.
  # @attr sender_business_bot_user_id [Integer] If non-zero, the user identifier of the business bot that sent this
  #   message.
  # @attr sender_boost_count [Integer] Number of times the sender of the message boosted the supergroup at the time the
  #   message was sent; 0 if none or unknown.
  #   For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead.
  # @attr author_signature [TD::Types::String, nil] For channel posts and anonymous group messages, optional author
  #   signature.
  # @attr media_album_id [Integer] Unique identifier of an album this message belongs to; 0 if none.
  #   Only audios, documents, photos and videos can be grouped together in albums.
  # @attr effect_id [Integer] Unique identifier of the effect added to the message; 0 if none.
  # @attr restriction_reason [TD::Types::String] If non-empty, contains a human-readable description of the reason why
  #   access to this message must be restricted.
  # @attr content [TD::Types::MessageContent] Content of the message.
  # @attr reply_markup [TD::Types::ReplyMarkup, nil] Reply markup for the message; may be null if none.
  class Message < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :sender_id, TD::Types::MessageSender
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :sending_state, TD::Types::MessageSendingState.optional.default(nil)
    attribute :scheduling_state, TD::Types::MessageSchedulingState.optional.default(nil)
    attribute :is_outgoing, TD::Types::Bool
    attribute :is_pinned, TD::Types::Bool
    attribute :is_from_offline, TD::Types::Bool
    attribute :can_be_edited, TD::Types::Bool
    attribute :can_be_forwarded, TD::Types::Bool
    attribute :can_be_replied_in_another_chat, TD::Types::Bool
    attribute :can_be_saved, TD::Types::Bool
    attribute :can_be_deleted_only_for_self, TD::Types::Bool
    attribute :can_be_deleted_for_all_users, TD::Types::Bool
    attribute :can_get_added_reactions, TD::Types::Bool
    attribute :can_get_statistics, TD::Types::Bool
    attribute :can_get_message_thread, TD::Types::Bool
    attribute :can_get_read_date, TD::Types::Bool
    attribute :can_get_viewers, TD::Types::Bool
    attribute :can_get_media_timestamp_links, TD::Types::Bool
    attribute :can_report_reactions, TD::Types::Bool
    attribute :has_timestamped_media, TD::Types::Bool
    attribute :is_channel_post, TD::Types::Bool
    attribute :is_topic_message, TD::Types::Bool
    attribute :contains_unread_mention, TD::Types::Bool
    attribute :date, TD::Types::Coercible::Integer
    attribute :edit_date, TD::Types::Coercible::Integer
    attribute :forward_info, TD::Types::MessageForwardInfo.optional.default(nil)
    attribute :import_info, TD::Types::MessageImportInfo.optional.default(nil)
    attribute :interaction_info, TD::Types::MessageInteractionInfo.optional.default(nil)
    attribute :unread_reactions, TD::Types::Array.of(TD::Types::UnreadReaction)
    attribute :fact_check, TD::Types::FactCheck.optional.default(nil)
    attribute :reply_to, TD::Types::MessageReplyTo.optional.default(nil)
    attribute :message_thread_id, TD::Types::Coercible::Integer
    attribute :saved_messages_topic_id, TD::Types::Coercible::Integer
    attribute :self_destruct_type, TD::Types::MessageSelfDestructType.optional.default(nil)
    attribute :self_destruct_in, TD::Types::Coercible::Float
    attribute :auto_delete_in, TD::Types::Coercible::Float
    attribute :via_bot_user_id, TD::Types::Coercible::Integer
    attribute :sender_business_bot_user_id, TD::Types::Coercible::Integer
    attribute :sender_boost_count, TD::Types::Coercible::Integer
    attribute :author_signature, TD::Types::String.optional.default(nil)
    attribute :media_album_id, TD::Types::Coercible::Integer
    attribute :effect_id, TD::Types::Coercible::Integer
    attribute :restriction_reason, TD::Types::String
    attribute :content, TD::Types::MessageContent
    attribute :reply_markup, TD::Types::ReplyMarkup.optional.default(nil)
  end
end
