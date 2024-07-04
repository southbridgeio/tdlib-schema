module TD::Types
  # Represents link to a JPEG image.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr title [TD::Types::String] Title of the result, if known.
  # @attr description [TD::Types::String] A short description of the result, if known.
  # @attr thumbnail_url [TD::Types::String] URL of the photo thumbnail, if it exists.
  # @attr photo_url [TD::Types::String] The URL of the JPEG photo (photo size must not exceed 5MB).
  # @attr photo_width [Integer] Width of the photo.
  # @attr photo_height [Integer] Height of the photo.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup; pass null if none.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: inputMessageText, inputMessagePhoto, inputMessageInvoice,
  #   inputMessageLocation, {TD::Types::InputMessageContent::Venue} or inputMessageContact.
  class InputInlineQueryResult::Photo < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :photo_url, TD::Types::String
    attribute :photo_width, TD::Types::Coercible::Integer
    attribute :photo_height, TD::Types::Coercible::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
