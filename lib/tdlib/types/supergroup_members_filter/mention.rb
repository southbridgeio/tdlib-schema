module TD::Types
  # Returns users which can be mentioned in the supergroup.
  #
  # @attr query [String] Query to search for.
  # @attr message_thread_id [Integer] If non-zero, the identifier of the current message thread.
  class SupergroupMembersFilter::Mention < SupergroupMembersFilter
    attribute :query, TD::Types::String
    attribute :message_thread_id, TD::Types::Integer
  end
end
