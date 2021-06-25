module TD::Types
  # A chat invite link was edited.
  #
  # @attr old_invite_link [TD::Types::ChatInviteLink] Previous information about the invite link.
  # @attr new_invite_link [TD::Types::ChatInviteLink] New information about the invite link.
  class ChatEventAction::InviteLinkEdited < ChatEventAction
    attribute :old_invite_link, TD::Types::ChatInviteLink
    attribute :new_invite_link, TD::Types::ChatInviteLink
  end
end
