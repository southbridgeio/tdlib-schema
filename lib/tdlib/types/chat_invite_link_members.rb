module TD::Types
  # Contains a list of chat members joined a chat by an invite link.
  #
  # @attr total_count [Integer] Approximate total count of chat members found.
  # @attr members [Array<TD::Types::ChatInviteLinkMember>] List of chat members, joined a chat by an invite link.
  class ChatInviteLinkMembers < Base
    attribute :total_count, TD::Types::Integer
    attribute :members, TD::Types::Array.of(TD::Types::ChatInviteLinkMember)
  end
end
