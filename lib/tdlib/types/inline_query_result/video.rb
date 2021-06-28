module TD::Types
  # Represents a video.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr video [TD::Types::Video] Video.
  # @attr title [TD::Types::String] Title of the video.
  # @attr description [TD::Types::String] Description of the video.
  class InlineQueryResult::Video < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :video, TD::Types::Video
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
  end
end
