module TD::Types
  # The link is a chat invite link.
  # Call checkChatInviteLink with the given invite link to process the link.
  # If the link is valid and the user wants to join the chat, then call joinChatByInviteLink.
  #
  # @attr invite_link [TD::Types::String] Internal representation of the invite link.
  class InternalLinkType::ChatInvite < InternalLinkType
    attribute :invite_link, TD::Types::String
  end
end
