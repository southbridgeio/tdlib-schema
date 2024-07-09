module TD::Types
  # Describes a user that sent a join request and waits for administrator approval.
  #
  # @attr user_id [Integer] User identifier.
  # @attr date [Integer] Point in time (Unix timestamp) when the user sent the join request.
  # @attr bio [TD::Types::String] A short bio of the user.
  class ChatJoinRequest < Base
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :bio, TD::Types::String
  end
end
