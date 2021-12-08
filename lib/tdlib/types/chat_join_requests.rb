module TD::Types
  # Contains a list of chat join requests.
  #
  # @attr total_count [Integer] Approximate total count of requests found.
  # @attr requests [Array<TD::Types::ChatJoinRequest>] List of the requests.
  class ChatJoinRequests < Base
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :requests, TD::Types::Array.of(TD::Types::ChatJoinRequest)
  end
end
