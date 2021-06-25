module TD::Types
  # Describes a chat or user profile photo.
  #
  # @attr id [Integer] Unique photo identifier.
  # @attr added_date [Integer] Point in time (Unix timestamp) when the photo has been added.
  # @attr minithumbnail [TD::Types::Minithumbnail, nil] Photo minithumbnail; may be null.
  # @attr sizes [Array<TD::Types::PhotoSize>] Available variants of the photo in JPEG format, in different size.
  # @attr animation [TD::Types::AnimatedChatPhoto, nil] Animated variant of the photo in MPEG4 format; may be null.
  class ChatPhoto < Base
    attribute :id, TD::Types::Integer
    attribute :added_date, TD::Types::Integer
    attribute :minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
    attribute :sizes, TD::Types::Array.of(TD::Types::PhotoSize)
    attribute :animation, TD::Types::AnimatedChatPhoto.optional.default(nil)
  end
end
