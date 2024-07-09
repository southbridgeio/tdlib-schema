module TD::Types
  # The link is an invite link to a chat folder.
  # Call checkChatFolderInviteLink with the given invite link to process the link.
  # If the link is valid and the user wants to join the chat folder, then call addChatFolderByInviteLink.
  #
  # @attr invite_link [TD::Types::String] Internal representation of the invite link.
  class InternalLinkType::ChatFolderInvite < InternalLinkType
    attribute :invite_link, TD::Types::String
  end
end
