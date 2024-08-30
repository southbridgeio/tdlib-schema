module TD::Types
  # A video note message.
  #
  # @attr video_note [TD::Types::InputFile] Video note to be sent.
  # @attr thumbnail [TD::Types::InputThumbnail, nil] Video thumbnail; may be null if empty; pass null to skip thumbnail
  #   uploading.
  # @attr duration [Integer] Duration of the video, in seconds; 0-60.
  # @attr length [Integer] Video width and height; must be positive and not greater than 640.
  # @attr self_destruct_type [TD::Types::MessageSelfDestructType, nil] Video note self-destruct type; may be null if
  #   none; pass null if none; private chats only.
  class InputMessageContent::VideoNote < InputMessageContent
    attribute :video_note, TD::Types::InputFile
    attribute :thumbnail, TD::Types::InputThumbnail.optional.default(nil)
    attribute :duration, TD::Types::Coercible::Integer
    attribute :length, TD::Types::Coercible::Integer
    attribute :self_destruct_type, TD::Types::MessageSelfDestructType.optional.default(nil)
  end
end
