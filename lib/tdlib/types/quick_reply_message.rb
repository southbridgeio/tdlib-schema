module TD::Types
  # Describes a message that can be used for quick reply.
  #
  # @attr id [Integer] Unique message identifier among all quick replies.
  # @attr sending_state [TD::Types::MessageSendingState, nil] The sending state of the message; may be null if the
  #   message isn't being sent and didn't fail to be sent.
  # @attr can_be_edited [Boolean] True, if the message can be edited.
  # @attr reply_to_message_id [Integer] The identifier of the quick reply message to which the message replies; 0 if
  #   none.
  # @attr via_bot_user_id [Integer] If non-zero, the user identifier of the bot through which this message was sent.
  # @attr media_album_id [Integer] Unique identifier of an album this message belongs to; 0 if none.
  #   Only audios, documents, photos and videos can be grouped together in albums.
  # @attr content [TD::Types::MessageContent] Content of the message.
  # @attr reply_markup [TD::Types::ReplyMarkup, nil] Inline keyboard reply markup for the message; may be null if none.
  class QuickReplyMessage < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :sending_state, TD::Types::MessageSendingState.optional.default(nil)
    attribute :can_be_edited, TD::Types::Bool
    attribute :reply_to_message_id, TD::Types::Coercible::Integer
    attribute :via_bot_user_id, TD::Types::Coercible::Integer
    attribute :media_album_id, TD::Types::Coercible::Integer
    attribute :content, TD::Types::MessageContent
    attribute :reply_markup, TD::Types::ReplyMarkup.optional.default(nil)
  end
end
