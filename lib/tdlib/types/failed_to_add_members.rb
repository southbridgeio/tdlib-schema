module TD::Types
  # Represents a list of users that has failed to be added to a chat.
  #
  # @attr failed_to_add_members [Array<TD::Types::FailedToAddMember>] Information about users that weren't added to the
  #   chat.
  class FailedToAddMembers < Base
    attribute :failed_to_add_members, TD::Types::Array.of(TD::Types::FailedToAddMember)
  end
end
