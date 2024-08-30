module TD::Types
  # Contains information about a newly created basic group chat.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr failed_to_add_members [TD::Types::FailedToAddMembers] Information about failed to add members.
  class CreatedBasicGroupChat < Base
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :failed_to_add_members, TD::Types::FailedToAddMembers
  end
end
