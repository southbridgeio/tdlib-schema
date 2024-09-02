module TD::Types
  # A new member was accepted to the chat by an administrator.
  #
  # @attr approver_user_id [Integer] User identifier of the chat administrator, approved user join request.
  # @attr invite_link [TD::Types::ChatInviteLink, nil] Invite link used to join the chat; may be null.
  class ChatEventAction::MemberJoinedByRequest < ChatEventAction
    attribute :approver_user_id, TD::Types::Coercible::Integer
    attribute :invite_link, TD::Types::ChatInviteLink.optional.default(nil)
  end
end
