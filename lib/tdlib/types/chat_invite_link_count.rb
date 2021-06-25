module TD::Types
  # Describes a chat administrator with a number of active and revoked chat invite links.
  #
  # @attr user_id [Integer] Administrator's user identifier.
  # @attr invite_link_count [Integer] Number of active invite links.
  # @attr revoked_invite_link_count [Integer] Number of revoked invite links.
  class ChatInviteLinkCount < Base
    attribute :user_id, TD::Types::Integer
    attribute :invite_link_count, TD::Types::Integer
    attribute :revoked_invite_link_count, TD::Types::Integer
  end
end
