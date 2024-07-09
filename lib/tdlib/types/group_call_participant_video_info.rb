module TD::Types
  # Contains information about a group call participant's video channel.
  #
  # @attr source_groups [Array<TD::Types::GroupCallVideoSourceGroup>] List of synchronization source groups of the
  #   video.
  # @attr endpoint_id [TD::Types::String] Video channel endpoint identifier.
  # @attr is_paused [Boolean] True, if the video is paused.
  #   This flag needs to be ignored, if new video frames are received.
  class GroupCallParticipantVideoInfo < Base
    attribute :source_groups, TD::Types::Array.of(TD::Types::GroupCallVideoSourceGroup)
    attribute :endpoint_id, TD::Types::String
    attribute :is_paused, TD::Types::Bool
  end
end
