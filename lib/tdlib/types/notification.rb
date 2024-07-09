module TD::Types
  # Contains information about a notification.
  #
  # @attr id [Integer] Unique persistent identifier of this notification.
  # @attr date [Integer] Notification date.
  # @attr is_silent [Boolean] True, if the notification was explicitly sent without sound.
  # @attr type [TD::Types::NotificationType] Notification type.
  class Notification < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :is_silent, TD::Types::Bool
    attribute :type, TD::Types::NotificationType
  end
end
