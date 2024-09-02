module TD::Types
  # Represents a list of found users.
  #
  # @attr user_ids [Array<Integer>] Identifiers of the found users.
  # @attr next_offset [TD::Types::String] The offset for the next request.
  #   If empty, then there are no more results.
  class FoundUsers < Base
    attribute :user_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :next_offset, TD::Types::String
  end
end
