module TD::Types
  # Describes a group of video synchronization source identifiers.
  #
  # @attr semantics [TD::Types::String] The semantics of sources, one of "SIM" or "FID".
  # @attr source_ids [Array<Integer>] The list of synchronization source identifiers.
  class GroupCallVideoSourceGroup < Base
    attribute :semantics, TD::Types::String
    attribute :source_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
