module TD::Types
  # Describes an available stream in a group call.
  #
  # @attr channel_id [Integer] Identifier of an audio/video channel.
  # @attr scale [Integer] Scale of segment durations in the stream.
  #   The duration is 1000/(2**scale) milliseconds.
  # @attr time_offset [Integer] Point in time when the stream currently ends; Unix timestamp in milliseconds.
  class GroupCallStream < Base
    attribute :channel_id, TD::Types::Coercible::Integer
    attribute :scale, TD::Types::Coercible::Integer
    attribute :time_offset, TD::Types::Coercible::Integer
  end
end
