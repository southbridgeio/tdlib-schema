module TD::Types
  # The link is a link to boost a channel chat.
  #
  # @attr photo [TD::Types::ChatPhoto, nil] Photo of the chat; may be null.
  class LinkPreviewType::ChannelBoost < LinkPreviewType
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
  end
end
