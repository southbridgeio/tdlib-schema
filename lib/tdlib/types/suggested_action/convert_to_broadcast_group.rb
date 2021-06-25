module TD::Types
  # Suggests the user to convert specified supergroup to a broadcast group.
  #
  # @attr supergroup_id [Integer] Supergroup identifier.
  class SuggestedAction::ConvertToBroadcastGroup < SuggestedAction
    attribute :supergroup_id, TD::Types::Integer
  end
end
