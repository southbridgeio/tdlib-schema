module TD::Types
  # Options to be used when a message content is copied without reference to the original sender.
  # Service messages and messageInvoice can't be copied.
  #
  # @attr send_copy [Boolean] True, if content of the message needs to be copied without reference to the original
  #   sender.
  #   Always true if the message is forwarded to a secret chat or is local.
  # @attr replace_caption [Boolean] True, if media caption of the message copy needs to be replaced.
  #   Ignored if send_copy is false.
  # @attr new_caption [TD::Types::FormattedText] New message caption; pass null to copy message without caption.
  #   Ignored if replace_caption is false.
  class MessageCopyOptions < Base
    attribute :send_copy, TD::Types::Bool
    attribute :replace_caption, TD::Types::Bool
    attribute :new_caption, TD::Types::FormattedText
  end
end
