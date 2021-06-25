module TD::Types
  # Contains a list of chat invite link counts.
  #
  # @attr invite_link_counts [Array<TD::Types::ChatInviteLinkCount>] List of invite linkcounts.
  class ChatInviteLinkCounts < Base
    attribute :invite_link_counts, TD::Types::Array.of(TD::Types::ChatInviteLinkCount)
  end
end
