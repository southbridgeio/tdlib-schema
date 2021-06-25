module TD::Types
  # Describes a join response candidate for interaction with tgcalls.
  #
  # @attr port [String] Value of the field port.
  # @attr protocol [String] Value of the field protocol.
  # @attr network [String] Value of the field network.
  # @attr generation [String] Value of the field generation.
  # @attr id [String] Value of the field id.
  # @attr component [String] Value of the field component.
  # @attr foundation [String] Value of the field foundation.
  # @attr priority [String] Value of the field priority.
  # @attr ip [String] Value of the field ip.
  # @attr type [String] Value of the field type.
  # @attr tcp_type [String] Value of the field tcp_type.
  # @attr rel_addr [String] Value of the field rel_addr.
  # @attr rel_port [String] Value of the field rel_port.
  class GroupCallJoinResponseCandidate < Base
    attribute :port, TD::Types::String
    attribute :protocol, TD::Types::String
    attribute :network, TD::Types::String
    attribute :generation, TD::Types::String
    attribute :id, TD::Types::String
    attribute :component, TD::Types::String
    attribute :foundation, TD::Types::String
    attribute :priority, TD::Types::String
    attribute :ip, TD::Types::String
    attribute :type, TD::Types::String
    attribute :tcp_type, TD::Types::String
    attribute :rel_addr, TD::Types::String
    attribute :rel_port, TD::Types::String
  end
end
