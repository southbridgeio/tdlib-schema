module TD::Types
  # A chat invite link.
  #
  # @attr info [TD::Types::ChatInviteLinkInfo] Information about the chat invite link.
  class TMeUrlType::ChatInvite < TMeUrlType
    attribute :info, TD::Types::ChatInviteLinkInfo
  end
end
