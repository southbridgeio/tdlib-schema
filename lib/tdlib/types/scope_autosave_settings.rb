module TD::Types
  # Contains autosave settings for an autosave settings scope.
  #
  # @attr autosave_photos [Boolean] True, if photo autosave is enabled.
  # @attr autosave_videos [Boolean] True, if video autosave is enabled.
  # @attr max_video_file_size [Integer] The maximum size of a video file to be autosaved, in bytes; 512 KB - 4000 MB.
  class ScopeAutosaveSettings < Base
    attribute :autosave_photos, TD::Types::Bool
    attribute :autosave_videos, TD::Types::Bool
    attribute :max_video_file_size, TD::Types::Coercible::Integer
  end
end
