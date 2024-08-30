module TD::Types
  # Describes an invoice to process.
  class InputInvoice < Base
    %w[
      message
      name
      telegram
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_invoice/#{type}"
    end
  end
end
