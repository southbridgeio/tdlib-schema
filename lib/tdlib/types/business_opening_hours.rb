module TD::Types
  # Describes opening hours of a business.
  #
  # @attr time_zone_id [TD::Types::String] Unique time zone identifier.
  # @attr opening_hours [Array<TD::Types::BusinessOpeningHoursInterval>] Intervals of the time when the business is
  #   open.
  class BusinessOpeningHours < Base
    attribute :time_zone_id, TD::Types::String
    attribute :opening_hours, TD::Types::Array.of(TD::Types::BusinessOpeningHoursInterval)
  end
end
