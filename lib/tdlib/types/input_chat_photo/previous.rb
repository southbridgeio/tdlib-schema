module TD::Types
  # A previously used profile photo of the current user.
  #
  # @attr chat_photo_id [Integer] Identifier of the profile photo to reuse.
  class InputChatPhoto::Previous < InputChatPhoto
    attribute :chat_photo_id, TD::Types::Coercible::Integer
  end
end
