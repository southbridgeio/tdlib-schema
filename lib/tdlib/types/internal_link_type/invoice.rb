module TD::Types
  # The link is a link to an invoice.
  # Call getPaymentForm with the given invoice name to process the link.
  #
  # @attr invoice_name [TD::Types::String] Name of the invoice.
  class InternalLinkType::Invoice < InternalLinkType
    attribute :invoice_name, TD::Types::String
  end
end
