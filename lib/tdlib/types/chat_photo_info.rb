module TD::Types
  # Contains basic information about the photo of a chat.
  #
  # @attr small [TD::Types::File] A small (160x160) chat photo variant in JPEG format.
  #   The file can be downloaded only before the photo is changed.
  # @attr big [TD::Types::File] A big (640x640) chat photo variant in JPEG format.
  #   The file can be downloaded only before the photo is changed.
  # @attr minithumbnail [TD::Types::Minithumbnail, nil] Chat photo minithumbnail; may be null.
  # @attr has_animation [Boolean] True, if the photo has animated variant.
  # @attr is_personal [Boolean] True, if the photo is visible only for the current user.
  class ChatPhotoInfo < Base
    attribute :small, TD::Types::File
    attribute :big, TD::Types::File
    attribute :minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
    attribute :has_animation, TD::Types::Bool
    attribute :is_personal, TD::Types::Bool
  end
end
