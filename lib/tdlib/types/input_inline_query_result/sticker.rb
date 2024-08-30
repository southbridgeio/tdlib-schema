module TD::Types
  # Represents a link to a WEBP, TGS, or WEBM sticker.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr thumbnail_url [TD::Types::String] URL of the sticker thumbnail, if it exists.
  # @attr sticker_url [TD::Types::String] The URL of the WEBP, TGS, or WEBM sticker (sticker file size must not exceed
  #   5MB).
  # @attr sticker_width [Integer] Width of the sticker.
  # @attr sticker_height [Integer] Height of the sticker.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup; pass null if none.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: inputMessageText, inputMessageSticker, inputMessageInvoice,
  #   inputMessageLocation, {TD::Types::InputMessageContent::Venue} or inputMessageContact.
  class InputInlineQueryResult::Sticker < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :sticker_url, TD::Types::String
    attribute :sticker_width, TD::Types::Coercible::Integer
    attribute :sticker_height, TD::Types::Coercible::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
