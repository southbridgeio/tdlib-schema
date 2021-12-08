module TD::Types
  # Represents a link to an animated GIF or an animated (i.e., without sound) H.264/MPEG-4 AVC video.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr title [TD::Types::String] Title of the query result.
  # @attr thumbnail_url [TD::Types::String] URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists.
  # @attr thumbnail_mime_type [TD::Types::String] MIME type of the video thumbnail.
  #   If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4".
  # @attr video_url [TD::Types::String] The URL of the video file (file size must not exceed 1MB).
  # @attr video_mime_type [TD::Types::String] MIME type of the video file.
  #   Must be one of "image/gif" and "video/mp4".
  # @attr video_duration [Integer] Duration of the video, in seconds.
  # @attr video_width [Integer] Width of the video.
  # @attr video_height [Integer] Height of the video.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup; pass null if none.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageInvoice,
  #   inputMessageLocation, {TD::Types::InputMessageContent::Venue} or inputMessageContact.
  class InputInlineQueryResult::Animation < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :thumbnail_mime_type, TD::Types::String
    attribute :video_url, TD::Types::String
    attribute :video_mime_type, TD::Types::String
    attribute :video_duration, TD::Types::Coercible::Integer
    attribute :video_width, TD::Types::Coercible::Integer
    attribute :video_height, TD::Types::Coercible::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
