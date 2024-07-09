module TD::Types
  # Describes a chat or user profile photo.
  #
  # @attr id [Integer] Unique photo identifier.
  # @attr added_date [Integer] Point in time (Unix timestamp) when the photo has been added.
  # @attr minithumbnail [TD::Types::Minithumbnail, nil] Photo minithumbnail; may be null.
  # @attr sizes [Array<TD::Types::PhotoSize>] Available variants of the photo in JPEG format, in different size.
  # @attr animation [TD::Types::AnimatedChatPhoto, nil] A big (up to 1280x1280) animated variant of the photo in MPEG4
  #   format; may be null.
  # @attr small_animation [TD::Types::AnimatedChatPhoto, nil] A small (160x160) animated variant of the photo in MPEG4
  #   format; may be null even the big animation is available.
  # @attr sticker [TD::Types::ChatPhotoSticker, nil] Sticker-based version of the chat photo; may be null.
  class ChatPhoto < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :added_date, TD::Types::Coercible::Integer
    attribute :minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
    attribute :sizes, TD::Types::Array.of(TD::Types::PhotoSize)
    attribute :animation, TD::Types::AnimatedChatPhoto.optional.default(nil)
    attribute :small_animation, TD::Types::AnimatedChatPhoto.optional.default(nil)
    attribute :sticker, TD::Types::ChatPhotoSticker.optional.default(nil)
  end
end
