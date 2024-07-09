module TD::Types
  # A link to a chat.
  #
  # @attr title [TD::Types::String] Chat title.
  # @attr photo [TD::Types::ChatPhotoInfo, nil] Chat photo; may be null.
  # @attr accent_color_id [Integer] Identifier of the accent color for chat title and background of chat photo.
  # @attr username [TD::Types::String] Chat username by which all other information about the chat can be resolved.
  class PageBlock::ChatLink < PageBlock
    attribute :title, TD::Types::String
    attribute :photo, TD::Types::ChatPhotoInfo.optional.default(nil)
    attribute :accent_color_id, TD::Types::Coercible::Integer
    attribute :username, TD::Types::String
  end
end
