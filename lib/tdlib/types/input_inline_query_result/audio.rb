module TD::Types
  # Represents a link to an MP3 audio file.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr title [TD::Types::String] Title of the audio file.
  # @attr performer [TD::Types::String] Performer of the audio file.
  # @attr audio_url [TD::Types::String] The URL of the audio file.
  # @attr audio_duration [Integer] Audio file duration, in seconds.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup; pass null if none.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: inputMessageText, inputMessageAudio, inputMessageInvoice,
  #   inputMessageLocation, {TD::Types::InputMessageContent::Venue} or inputMessageContact.
  class InputInlineQueryResult::Audio < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :performer, TD::Types::String
    attribute :audio_url, TD::Types::String
    attribute :audio_duration, TD::Types::Coercible::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
