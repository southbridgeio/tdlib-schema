module TD::Types
  # A previously used profile photo of the current user.
  #
  # @attr chat_photo_id [Integer] Identifier of the current user's profile photo to reuse.
  class InputChatPhoto::Previous < InputChatPhoto
    attribute :chat_photo_id, TD::Types::Integer
  end
end
