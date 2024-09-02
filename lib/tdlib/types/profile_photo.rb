module TD::Types
  # Describes a user profile photo.
  #
  # @attr id [Integer] Photo identifier; 0 for an empty photo.
  #   Can be used to find a photo in a list of user profile photos.
  # @attr small [TD::Types::File] A small (160x160) user profile photo.
  #   The file can be downloaded only before the photo is changed.
  # @attr big [TD::Types::File] A big (640x640) user profile photo.
  #   The file can be downloaded only before the photo is changed.
  # @attr minithumbnail [TD::Types::Minithumbnail, nil] User profile photo minithumbnail; may be null.
  # @attr has_animation [Boolean] True, if the photo has animated variant.
  # @attr is_personal [Boolean] True, if the photo is visible only for the current user.
  class ProfilePhoto < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :small, TD::Types::File
    attribute :big, TD::Types::File
    attribute :minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
    attribute :has_animation, TD::Types::Bool
    attribute :is_personal, TD::Types::Bool
  end
end
