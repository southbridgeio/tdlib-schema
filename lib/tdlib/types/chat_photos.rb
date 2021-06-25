module TD::Types
  # Contains a list of chat or user profile photos.
  #
  # @attr total_count [Integer] Total number of photos.
  # @attr photos [Array<TD::Types::ChatPhoto>] List of photos.
  class ChatPhotos < Base
    attribute :total_count, TD::Types::Integer
    attribute :photos, TD::Types::Array.of(TD::Types::ChatPhoto)
  end
end
