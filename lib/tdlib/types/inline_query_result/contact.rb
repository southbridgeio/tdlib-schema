module TD::Types
  # Represents a user contact.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr contact [TD::Types::Contact] A user contact.
  # @attr thumbnail [TD::Types::Thumbnail, nil] Result thumbnail in JPEG format; may be null.
  class InlineQueryResult::Contact < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :contact, TD::Types::Contact
    attribute :thumbnail, TD::Types::Thumbnail.optional.default(nil)
  end
end
