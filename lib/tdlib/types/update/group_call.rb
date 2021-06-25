module TD::Types
  # Information about a group call was updated.
  #
  # @attr group_call [TD::Types::GroupCall] New data about a group call.
  class Update::GroupCall < Update
    attribute :group_call, TD::Types::GroupCall
  end
end
