module TD::Types
  # Represents a link to an opus-encoded audio file within an OGG container, single channel audio.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr title [TD::Types::String] Title of the voice note.
  # @attr voice_note_url [TD::Types::String] The URL of the voice note file.
  # @attr voice_note_duration [Integer] Duration of the voice note, in seconds.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup; pass null if none.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: inputMessageText, inputMessageVoiceNote, inputMessageInvoice,
  #   inputMessageLocation, {TD::Types::InputMessageContent::Venue} or inputMessageContact.
  class InputInlineQueryResult::VoiceNote < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :voice_note_url, TD::Types::String
    attribute :voice_note_duration, TD::Types::Coercible::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
