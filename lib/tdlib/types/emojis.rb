module TD::Types
  # Represents a list of emojis.
  #
  # @attr emojis [Array<TD::Types::String>] List of emojis.
  class Emojis < Base
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
