module TD::Types
  # The link is a link to a chat.
  #
  # @attr type [TD::Types::InviteLinkChatType] Type of the chat.
  # @attr photo [TD::Types::ChatPhoto, nil] Photo of the chat; may be null.
  # @attr creates_join_request [Boolean] True, if the link only creates join request.
  class LinkPreviewType::Chat < LinkPreviewType
    attribute :type, TD::Types::InviteLinkChatType
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :creates_join_request, TD::Types::Bool
  end
end
