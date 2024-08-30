module TD::Types
  # A message with an invoice from a bot.
  # Use getInternalLink with internalLinkTypeBotStart to share the invoice.
  #
  # @attr product_info [TD::Types::ProductInfo] Information about the product.
  # @attr currency [TD::Types::String] Currency for the product price.
  # @attr total_amount [Integer] Product total price in the smallest units of the currency.
  # @attr start_parameter [TD::Types::String] Unique invoice bot start_parameter to be passed to getInternalLink.
  # @attr is_test [Boolean] True, if the invoice is a test invoice.
  # @attr need_shipping_address [Boolean] True, if the shipping address must be specified.
  # @attr receipt_message_id [Integer] The identifier of the message with the receipt, after the product has been
  #   purchased.
  # @attr paid_media [TD::Types::PaidMedia, nil] Extended media attached to the invoice; may be null if none.
  # @attr paid_media_caption [TD::Types::FormattedText, nil] Extended media caption; may be null if none.
  class MessageContent::Invoice < MessageContent
    attribute :product_info, TD::Types::ProductInfo
    attribute :currency, TD::Types::String
    attribute :total_amount, TD::Types::Coercible::Integer
    attribute :start_parameter, TD::Types::String
    attribute :is_test, TD::Types::Bool
    attribute :need_shipping_address, TD::Types::Bool
    attribute :receipt_message_id, TD::Types::Coercible::Integer
    attribute :paid_media, TD::Types::PaidMedia.optional.default(nil)
    attribute :paid_media_caption, TD::Types::FormattedText.optional.default(nil)
  end
end
