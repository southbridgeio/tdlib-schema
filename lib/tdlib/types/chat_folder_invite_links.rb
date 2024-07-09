module TD::Types
  # Represents a list of chat folder invite links.
  #
  # @attr invite_links [Array<TD::Types::ChatFolderInviteLink>] List of the invite links.
  class ChatFolderInviteLinks < Base
    attribute :invite_links, TD::Types::Array.of(TD::Types::ChatFolderInviteLink)
  end
end
