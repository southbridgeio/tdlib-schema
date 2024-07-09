module TD::Types
  # Contains a chat invite link.
  #
  # @attr invite_link [TD::Types::String] Chat invite link.
  # @attr name [TD::Types::String] Name of the link.
  # @attr creator_user_id [Integer] User identifier of an administrator created the link.
  # @attr date [Integer] Point in time (Unix timestamp) when the link was created.
  # @attr edit_date [Integer] Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown.
  # @attr expiration_date [Integer] Point in time (Unix timestamp) when the link will expire; 0 if never.
  # @attr member_limit [Integer] The maximum number of members, which can join the chat using the link simultaneously;
  #   0 if not limited.
  #   Always 0 if the link requires approval.
  # @attr member_count [Integer] Number of chat members, which joined the chat using the link.
  # @attr pending_join_request_count [Integer] Number of pending join requests created using this link.
  # @attr creates_join_request [Boolean] True, if the link only creates join request.
  #   If true, total number of joining members will be unlimited.
  # @attr is_primary [Boolean] True, if the link is primary.
  #   Primary invite link can't have name, expiration date, or usage limit.
  #   There is exactly one primary invite link for each administrator with can_invite_users right at a given time.
  # @attr is_revoked [Boolean] True, if the link was revoked.
  class ChatInviteLink < Base
    attribute :invite_link, TD::Types::String
    attribute :name, TD::Types::String
    attribute :creator_user_id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :edit_date, TD::Types::Coercible::Integer
    attribute :expiration_date, TD::Types::Coercible::Integer
    attribute :member_limit, TD::Types::Coercible::Integer
    attribute :member_count, TD::Types::Coercible::Integer
    attribute :pending_join_request_count, TD::Types::Coercible::Integer
    attribute :creates_join_request, TD::Types::Bool
    attribute :is_primary, TD::Types::Bool
    attribute :is_revoked, TD::Types::Bool
  end
end
