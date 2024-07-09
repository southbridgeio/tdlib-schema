module TD::Types
  # Represents a viewer of a message.
  #
  # @attr user_id [Integer] User identifier of the viewer.
  # @attr view_date [Integer] Approximate point in time (Unix timestamp) when the message was viewed.
  class MessageViewer < Base
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :view_date, TD::Types::Coercible::Integer
  end
end
