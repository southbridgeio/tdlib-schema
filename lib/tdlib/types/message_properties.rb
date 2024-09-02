module TD::Types
  # Contains properties of a message and describes actions that can be done with the message right now.
  #
  # @attr can_be_deleted_only_for_self [Boolean] True, if the message can be deleted only for the current user while
  #   other users will continue to see it using the method deleteMessages with revoke == false.
  # @attr can_be_deleted_for_all_users [Boolean] True, if the message can be deleted for all users using the method
  #   deleteMessages with revoke == true.
  # @attr can_be_edited [Boolean] True, if the message can be edited using the methods editMessageText,
  #   editMessageMedia, editMessageCaption, or editMessageReplyMarkup.
  #   For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used
  #   with this message.
  # @attr can_be_forwarded [Boolean] True, if the message can be forwarded using
  #   {TD::Types::InputMessageContent::Forwarded} or forwardMessages.
  # @attr can_be_paid [Boolean] True, if the message can be paid using inputInvoiceMessage.
  # @attr can_be_pinned [Boolean] True, if the message can be pinned or unpinned in the chat using pinChatMessage or
  #   unpinChatMessage.
  # @attr can_be_replied [Boolean] True, if the message can be replied in the same chat and forum topic using
  #   inputMessageReplyToMessage.
  # @attr can_be_replied_in_another_chat [Boolean] True, if the message can be replied in another chat or forum topic
  #   using inputMessageReplyToExternalMessage.
  # @attr can_be_saved [Boolean] True, if content of the message can be saved locally or copied using
  #   {TD::Types::InputMessageContent::Forwarded} or forwardMessages with copy options.
  # @attr can_be_shared_in_story [Boolean] True, if the message can be shared in a story using
  #   inputStoryAreaTypeMessage.
  # @attr can_edit_scheduling_state [Boolean] True, if scheduling state of the message can be edited.
  # @attr can_get_embedding_code [Boolean] True, if code for message embedding can be received using
  #   getMessageEmbeddingCode.
  # @attr can_get_link [Boolean] True, if a link can be generated for the message using getMessageLink.
  # @attr can_get_media_timestamp_links [Boolean] True, if media timestamp links can be generated for media timestamp
  #   entities in the message text, caption or link preview description using getMessageLink.
  # @attr can_get_message_thread [Boolean] True, if information about the message thread is available through
  #   getMessageThread and getMessageThreadHistory.
  # @attr can_get_read_date [Boolean] True, if read date of the message can be received through getMessageReadDate.
  # @attr can_get_statistics [Boolean] True, if message statistics are available through getMessageStatistics and
  #   message forwards can be received using getMessagePublicForwards.
  # @attr can_get_viewers [Boolean] True, if chat members already viewed the message can be received through
  #   getMessageViewers.
  # @attr can_recognize_speech [Boolean] True, if speech can be recognized for the message through recognizeSpeech.
  # @attr can_report_chat [Boolean] True, if the message can be reported using reportChat.
  # @attr can_report_reactions [Boolean] True, if reactions on the message can be reported through
  #   reportMessageReactions.
  # @attr can_report_supergroup_spam [Boolean] True, if the message can be reported using reportSupergroupSpam.
  # @attr can_set_fact_check [Boolean] True, if fact check for the message can be changed through setMessageFactCheck.
  # @attr need_show_statistics [Boolean] True, if message statistics must be available from context menu of the
  #   message.
  class MessageProperties < Base
    attribute :can_be_deleted_only_for_self, TD::Types::Bool
    attribute :can_be_deleted_for_all_users, TD::Types::Bool
    attribute :can_be_edited, TD::Types::Bool
    attribute :can_be_forwarded, TD::Types::Bool
    attribute :can_be_paid, TD::Types::Bool
    attribute :can_be_pinned, TD::Types::Bool
    attribute :can_be_replied, TD::Types::Bool
    attribute :can_be_replied_in_another_chat, TD::Types::Bool
    attribute :can_be_saved, TD::Types::Bool
    attribute :can_be_shared_in_story, TD::Types::Bool
    attribute :can_edit_scheduling_state, TD::Types::Bool
    attribute :can_get_embedding_code, TD::Types::Bool
    attribute :can_get_link, TD::Types::Bool
    attribute :can_get_media_timestamp_links, TD::Types::Bool
    attribute :can_get_message_thread, TD::Types::Bool
    attribute :can_get_read_date, TD::Types::Bool
    attribute :can_get_statistics, TD::Types::Bool
    attribute :can_get_viewers, TD::Types::Bool
    attribute :can_recognize_speech, TD::Types::Bool
    attribute :can_report_chat, TD::Types::Bool
    attribute :can_report_reactions, TD::Types::Bool
    attribute :can_report_supergroup_spam, TD::Types::Bool
    attribute :can_set_fact_check, TD::Types::Bool
    attribute :need_show_statistics, TD::Types::Bool
  end
end
