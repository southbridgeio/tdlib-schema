module TD::Types
  # A video story.
  #
  # @attr video [TD::Types::StoryVideo] The video in MPEG4 format.
  # @attr alternative_video [TD::Types::StoryVideo, nil] Alternative version of the video in MPEG4 format, encoded by
  #   x264 codec; may be null.
  class StoryContent::Video < StoryContent
    attribute :video, TD::Types::StoryVideo
    attribute :alternative_video, TD::Types::StoryVideo.optional.default(nil)
  end
end
