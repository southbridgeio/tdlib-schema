module TD::Types
  # Describes a time zone.
  #
  # @attr id [TD::Types::String] Unique time zone identifier.
  # @attr name [TD::Types::String] Time zone name.
  # @attr utc_time_offset [Integer] Current UTC time offset for the time zone.
  class TimeZone < Base
    attribute :id, TD::Types::String
    attribute :name, TD::Types::String
    attribute :utc_time_offset, TD::Types::Coercible::Integer
  end
end
