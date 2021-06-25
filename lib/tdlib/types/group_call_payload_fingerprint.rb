module TD::Types
  # Describes a payload fingerprint for interaction with tgcalls.
  #
  # @attr hash [String] Value of the field hash.
  # @attr setup [String] Value of the field setup.
  # @attr fingerprint [String] Value of the field fingerprint.
  class GroupCallPayloadFingerprint < Base
    attribute :hash, TD::Types::String
    attribute :setup, TD::Types::String
    attribute :fingerprint, TD::Types::String
  end
end
