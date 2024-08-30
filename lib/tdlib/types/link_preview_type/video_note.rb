module TD::Types
  # The link is a link to a video note message.
  #
  # @attr video_note [TD::Types::VideoNote] The video note.
  class LinkPreviewType::VideoNote < LinkPreviewType
    attribute :video_note, TD::Types::VideoNote
  end
end
