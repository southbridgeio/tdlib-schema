module TD::Types
  # A chat invite link was revoked.
  #
  # @attr invite_link [TD::Types::ChatInviteLink] The invite link.
  class ChatEventAction::InviteLinkRevoked < ChatEventAction
    attribute :invite_link, TD::Types::ChatInviteLink
  end
end
