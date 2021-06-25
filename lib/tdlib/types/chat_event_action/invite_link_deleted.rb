module TD::Types
  # A revoked chat invite link was deleted.
  #
  # @attr invite_link [TD::Types::ChatInviteLink] The invite link.
  class ChatEventAction::InviteLinkDeleted < ChatEventAction
    attribute :invite_link, TD::Types::ChatInviteLink
  end
end
