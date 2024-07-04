module TD::Types
  # Represents a point on the map.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr location [TD::Types::Location] Location result.
  # @attr live_period [Integer] Amount of time relative to the message sent time until the location can be updated, in
  #   seconds.
  # @attr title [TD::Types::String] Title of the result.
  # @attr thumbnail_url [TD::Types::String] URL of the result thumbnail, if it exists.
  # @attr thumbnail_width [Integer] Thumbnail width, if known.
  # @attr thumbnail_height [Integer] Thumbnail height, if known.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup; pass null if none.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation,
  #   {TD::Types::InputMessageContent::Venue} or inputMessageContact.
  class InputInlineQueryResult::Location < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :location, TD::Types::Location
    attribute :live_period, TD::Types::Coercible::Integer
    attribute :title, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :thumbnail_width, TD::Types::Coercible::Integer
    attribute :thumbnail_height, TD::Types::Coercible::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
