module TD::Types
  # Contains information about the total amount of data that was used to send and receive files.
  #
  # @attr file_type [TD::Types::FileType] Type of the file the data is part of; pass null if the data isn't related to
  #   files.
  # @attr network_type [TD::Types::NetworkType] Type of the network the data was sent through.
  #   Call setNetworkType to maintain the actual network type.
  # @attr sent_bytes [Integer] Total number of bytes sent.
  # @attr received_bytes [Integer] Total number of bytes received.
  class NetworkStatisticsEntry::File < NetworkStatisticsEntry
    attribute :file_type, TD::Types::FileType
    attribute :network_type, TD::Types::NetworkType
    attribute :sent_bytes, TD::Types::Coercible::Integer
    attribute :received_bytes, TD::Types::Coercible::Integer
  end
end
