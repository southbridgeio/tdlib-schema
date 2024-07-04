module TD::Types
  # Contains information about interactions with a message.
  #
  # @attr view_count [Integer] Number of times the message was viewed.
  # @attr forward_count [Integer] Number of times the message was forwarded.
  # @attr reply_info [TD::Types::MessageReplyInfo, nil] Information about direct or indirect replies to the message;
  #   may be null.
  #   Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which
  #   are not replies itself.
  class MessageInteractionInfo < Base
    attribute :view_count, TD::Types::Coercible::Integer
    attribute :forward_count, TD::Types::Coercible::Integer
    attribute :reply_info, TD::Types::MessageReplyInfo.optional.default(nil)
  end
end
