module TD::Types
  # Represents a link to a file.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr title [TD::Types::String] Title of the resulting file.
  # @attr description [TD::Types::String] Short description of the result, if known.
  # @attr document_url [TD::Types::String] URL of the file.
  # @attr mime_type [TD::Types::String] MIME type of the file content; only "application/pdf" and "application/zip" are
  #   currently allowed.
  # @attr thumbnail_url [TD::Types::String] The URL of the file thumbnail, if it exists.
  # @attr thumbnail_width [Integer] Width of the thumbnail.
  # @attr thumbnail_height [Integer] Height of the thumbnail.
  # @attr reply_markup [TD::Types::ReplyMarkup] The message reply markup; pass null if none.
  #   Must be of type {TD::Types::ReplyMarkup::InlineKeyboard} or null.
  # @attr input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: inputMessageText, inputMessageDocument, inputMessageInvoice,
  #   inputMessageLocation, {TD::Types::InputMessageContent::Venue} or inputMessageContact.
  class InputInlineQueryResult::Document < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :document_url, TD::Types::String
    attribute :mime_type, TD::Types::String
    attribute :thumbnail_url, TD::Types::String
    attribute :thumbnail_width, TD::Types::Coercible::Integer
    attribute :thumbnail_height, TD::Types::Coercible::Integer
    attribute :reply_markup, TD::Types::ReplyMarkup
    attribute :input_message_content, TD::Types::InputMessageContent
  end
end
