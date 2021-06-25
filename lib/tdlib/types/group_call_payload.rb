module TD::Types
  # Describes a payload for interaction with tgcalls.
  #
  # @attr ufrag [String] Value of the field ufrag.
  # @attr pwd [String] Value of the field pwd.
  # @attr fingerprints [Array<TD::Types::GroupCallPayloadFingerprint>] The list of fingerprints.
  class GroupCallPayload < Base
    attribute :ufrag, TD::Types::String
    attribute :pwd, TD::Types::String
    attribute :fingerprints, TD::Types::Array.of(TD::Types::GroupCallPayloadFingerprint)
  end
end
