module TD::Types
  # Contains a list of chat invite links.
  #
  # @attr total_count [Integer] Approximate total number of chat invite links found.
  # @attr invite_links [Array<TD::Types::ChatInviteLink>] List of invite links.
  class ChatInviteLinks < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :invite_links, TD::Types::Array.of(TD::Types::ChatInviteLink)
  end
end
