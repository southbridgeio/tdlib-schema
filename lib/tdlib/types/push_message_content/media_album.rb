module TD::Types
  # A media album.
  #
  # @attr total_count [Integer] Number of messages in the album.
  # @attr has_photos [Boolean] True, if the album has at least one photo.
  # @attr has_videos [Boolean] True, if the album has at least one video file.
  # @attr has_audios [Boolean] True, if the album has at least one audio file.
  # @attr has_documents [Boolean] True, if the album has at least one document.
  class PushMessageContent::MediaAlbum < PushMessageContent
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :has_photos, TD::Types::Bool
    attribute :has_videos, TD::Types::Bool
    attribute :has_audios, TD::Types::Bool
    attribute :has_documents, TD::Types::Bool
  end
end
