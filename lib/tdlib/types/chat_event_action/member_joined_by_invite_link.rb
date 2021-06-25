module TD::Types
  # A new member joined the chat by an invite link.
  #
  # @attr invite_link [TD::Types::ChatInviteLink] Invite link used to join the chat.
  class ChatEventAction::MemberJoinedByInviteLink < ChatEventAction
    attribute :invite_link, TD::Types::ChatInviteLink
  end
end
