module TD::Types
  # A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed.
  #
  # @attr member_id [TD::Types::MessageSender] Affected chat member identifier.
  # @attr old_status [TD::Types::ChatMemberStatus] Previous status of the chat member.
  # @attr new_status [TD::Types::ChatMemberStatus] New status of the chat member.
  class ChatEventAction::MemberRestricted < ChatEventAction
    attribute :member_id, TD::Types::MessageSender
    attribute :old_status, TD::Types::ChatMemberStatus
    attribute :new_status, TD::Types::ChatMemberStatus
  end
end
