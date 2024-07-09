module TD::Types
  # Contains information about a forwarded message.
  #
  # @attr origin [TD::Types::MessageOrigin] Origin of the forwarded message.
  # @attr date [Integer] Point in time (Unix timestamp) when the message was originally sent.
  # @attr source [TD::Types::ForwardSource, nil] For messages forwarded to the chat with the current user (Saved
  #   Messages), to the Replies bot chat, or to the channel's discussion group, information about the source message from
  #   which the message was forwarded last time; may be null for other forwards or if unknown.
  # @attr public_service_announcement_type [TD::Types::String] The type of public service announcement for the
  #   forwarded message.
  class MessageForwardInfo < Base
    attribute :origin, TD::Types::MessageOrigin
    attribute :date, TD::Types::Coercible::Integer
    attribute :source, TD::Types::ForwardSource.optional.default(nil)
    attribute :public_service_announcement_type, TD::Types::String
  end
end
