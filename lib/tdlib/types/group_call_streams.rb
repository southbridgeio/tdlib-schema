module TD::Types
  # Represents a list of group call streams.
  #
  # @attr streams [Array<TD::Types::GroupCallStream>] A list of group call streams.
  class GroupCallStreams < Base
    attribute :streams, TD::Types::Array.of(TD::Types::GroupCallStream)
  end
end
