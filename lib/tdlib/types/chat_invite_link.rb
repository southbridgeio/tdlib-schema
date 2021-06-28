module TD::Types
  # Contains a chat invite link.
  #
  # @attr invite_link [TD::Types::String] Chat invite link.
  # @attr creator_user_id [Integer] User identifier of an administrator created the link.
  # @attr date [Integer] Point in time (Unix timestamp) when the link was created.
  # @attr edit_date [Integer] Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown.
  # @attr expire_date [Integer] Point in time (Unix timestamp) when the link will expire; 0 if never.
  # @attr member_limit [Integer] The maximum number of members, which can join the chat using the link simultaneously;
  #   0 if not limited.
  # @attr member_count [Integer] Number of chat members, which joined the chat using the link.
  # @attr is_primary [Boolean] True, if the link is primary.
  #   Primary invite link can't have expire date or usage limit.
  #   There is exactly one primary invite link for each administrator with can_invite_users right at a given time.
  # @attr is_revoked [Boolean] True, if the link was revoked.
  class ChatInviteLink < Base
    attribute :invite_link, TD::Types::String
    attribute :creator_user_id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :edit_date, TD::Types::Coercible::Integer
    attribute :expire_date, TD::Types::Coercible::Integer
    attribute :member_limit, TD::Types::Coercible::Integer
    attribute :member_count, TD::Types::Coercible::Integer
    attribute :is_primary, TD::Types::Bool
    attribute :is_revoked, TD::Types::Bool
  end
end
