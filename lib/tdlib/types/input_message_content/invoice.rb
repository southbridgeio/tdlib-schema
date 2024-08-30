module TD::Types
  # A message with an invoice; can be used only by bots.
  #
  # @attr invoice [TD::Types::Invoice] Invoice.
  # @attr title [TD::Types::String] Product title; 1-32 characters.
  # @attr description [TD::Types::String] Product description; 0-255 characters.
  # @attr photo_url [TD::Types::String, nil] Product photo URL; optional.
  # @attr photo_size [Integer] Product photo size.
  # @attr photo_width [Integer] Product photo width.
  # @attr photo_height [Integer] Product photo height.
  # @attr payload [String] The invoice payload.
  # @attr provider_token [TD::Types::String, nil] Payment provider token; may be empty for payments in Telegram Stars.
  # @attr provider_data [TD::Types::String] JSON-encoded data about the invoice, which will be shared with the payment
  #   provider.
  # @attr start_parameter [TD::Types::String] Unique invoice bot deep link parameter for the generation of this
  #   invoice.
  #   If empty, it would be possible to pay directly from forwards of the invoice message.
  # @attr paid_media [TD::Types::InputPaidMedia] The content of paid media attached to the invoice; pass null if none.
  # @attr paid_media_caption [TD::Types::FormattedText] Paid media caption; pass null to use an empty caption;
  #   0-getOption("message_caption_length_max") characters.
  class InputMessageContent::Invoice < InputMessageContent
    attribute :invoice, TD::Types::Invoice
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :photo_url, TD::Types::String.optional.default(nil)
    attribute :photo_size, TD::Types::Coercible::Integer
    attribute :photo_width, TD::Types::Coercible::Integer
    attribute :photo_height, TD::Types::Coercible::Integer
    attribute :payload, TD::Types::Coercible::String
    attribute :provider_token, TD::Types::String.optional.default(nil)
    attribute :provider_data, TD::Types::String
    attribute :start_parameter, TD::Types::String
    attribute :paid_media, TD::Types::InputPaidMedia
    attribute :paid_media_caption, TD::Types::FormattedText
  end
end
