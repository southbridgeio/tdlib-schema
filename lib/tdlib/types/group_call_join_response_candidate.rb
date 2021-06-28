module TD::Types
  # Describes a join response candidate for interaction with tgcalls.
  #
  # @attr port [TD::Types::String] Value of the field port.
  # @attr protocol [TD::Types::String] Value of the field protocol.
  # @attr network [TD::Types::String] Value of the field network.
  # @attr generation [TD::Types::String] Value of the field generation.
  # @attr id [TD::Types::String] Value of the field id.
  # @attr component [TD::Types::String] Value of the field component.
  # @attr foundation [TD::Types::String] Value of the field foundation.
  # @attr priority [TD::Types::String] Value of the field priority.
  # @attr ip [TD::Types::String] Value of the field ip.
  # @attr type [TD::Types::String] Value of the field type.
  # @attr tcp_type [TD::Types::String] Value of the field tcp_type.
  # @attr rel_addr [TD::Types::String] Value of the field rel_addr.
  # @attr rel_port [TD::Types::String] Value of the field rel_port.
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
