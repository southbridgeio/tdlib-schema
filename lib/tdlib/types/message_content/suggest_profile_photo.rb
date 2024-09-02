module TD::Types
  # A profile photo was suggested to a user in a private chat.
  #
  # @attr photo [TD::Types::ChatPhoto] The suggested chat photo.
  #   Use the method setProfilePhoto with {TD::Types::InputChatPhoto::Previous} to apply the photo.
  class MessageContent::SuggestProfilePhoto < MessageContent
    attribute :photo, TD::Types::ChatPhoto
  end
end
