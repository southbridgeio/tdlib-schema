module TD::Types
  # A link to a chat.
  #
  # @attr title [TD::Types::String] Chat title.
  # @attr photo [TD::Types::ChatPhotoInfo, nil] Chat photo; may be null.
  # @attr username [TD::Types::String] Chat username, by which all other information about the chat can be resolved.
  class PageBlock::ChatLink < PageBlock
    attribute :title, TD::Types::String
    attribute :photo, TD::Types::ChatPhotoInfo.optional.default(nil)
    attribute :username, TD::Types::String
  end
end
