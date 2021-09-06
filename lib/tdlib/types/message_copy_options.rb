module TD::Types
  # Options to be used when a message content is copied without a link to the original message.
  #
  # @attr send_copy [Boolean] True, if content of the message needs to be copied without a link to the original
  #   message.
  #   Always true if the message is forwarded to a secret chat.
  # @attr replace_caption [Boolean] True, if media caption of the message copy needs to be replaced.
  #   Ignored if send_copy is false.
  # @attr new_caption [TD::Types::FormattedText] New message caption.
  #   Ignored if replace_caption is false.
  class MessageCopyOptions < Base
    attribute :send_copy, TD::Types::Bool
    attribute :replace_caption, TD::Types::Bool
    attribute :new_caption, TD::Types::FormattedText
  end
end
