module TD::Types
  # A new member joined the chat via an invite link.
  #
  # @attr invite_link [TD::Types::ChatInviteLink] Invite link used to join the chat.
  # @attr via_chat_folder_invite_link [Boolean] True, if the user has joined the chat using an invite link for a chat
  #   folder.
  class ChatEventAction::MemberJoinedByInviteLink < ChatEventAction
    attribute :invite_link, TD::Types::ChatInviteLink
    attribute :via_chat_folder_invite_link, TD::Types::Bool
  end
end
