module TD::Types
  # Represents a list of message viewers.
  #
  # @attr viewers [Array<TD::Types::MessageViewer>] List of message viewers.
  class MessageViewers < Base
    attribute :viewers, TD::Types::Array.of(TD::Types::MessageViewer)
  end
end
