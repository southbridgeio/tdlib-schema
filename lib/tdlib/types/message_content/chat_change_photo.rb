module TD::Types
  # An updated chat photo.
  #
  # @attr photo [TD::Types::ChatPhoto] New chat photo.
  class MessageContent::ChatChangePhoto < MessageContent
    attribute :photo, TD::Types::ChatPhoto
  end
end
