module TD::Types
  # New call signaling data arrived.
  #
  # @attr call_id [Integer] The call identifier.
  # @attr data [String] The data.
  class Update::NewCallSignalingData < Update
    attribute :call_id, TD::Types::Integer
    attribute :data, TD::Types::String
  end
end
