module TD::Types
  # Describes a payload fingerprint for interaction with tgcalls.
  #
  # @attr hash [TD::Types::String] Value of the field hash.
  # @attr setup [TD::Types::String] Value of the field setup.
  # @attr fingerprint [TD::Types::String] Value of the field fingerprint.
  class GroupCallPayloadFingerprint < Base
    attribute :hash, TD::Types::String
    attribute :setup, TD::Types::String
    attribute :fingerprint, TD::Types::String
  end
end
