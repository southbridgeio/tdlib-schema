module TD::Types
  # Represents information about a venue.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr venue [TD::Types::Venue] Venue result.
  # @attr thumbnail_url [TD::Types::String] URL of the result thumbnail, if it exists.
  # @attr thumbnail_width [Integer] Thumbnail width, if known.
  # @attr thumbnail_height [Integer] Thumbnail height, if known.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup; pass null if none.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation,
  #   {TD::Types::InputMessageContent::Venue} or inputMessageContact.
  class InputInlineQueryResult::Venue < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :venue, TD::Types::Venue
    attribute :thumbnail_url, TD::Types::String
    attribute :thumbnail_width, TD::Types::Coercible::Integer
    attribute :thumbnail_height, TD::Types::Coercible::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
