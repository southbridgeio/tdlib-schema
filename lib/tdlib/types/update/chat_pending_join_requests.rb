module TD::Types
  # The chat pending join requests were changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr pending_join_requests [TD::Types::ChatJoinRequestsInfo, nil] The new data about pending join requests; may be
  #   null.
  class Update::ChatPendingJoinRequests < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :pending_join_requests, TD::Types::ChatJoinRequestsInfo.optional.default(nil)
  end
end
