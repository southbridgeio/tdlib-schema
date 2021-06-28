module TD::Types
  # A plain text.
  #
  # @attr text [TD::Types::String] Text.
  class RichText::Plain < RichText
    attribute :text, TD::Types::String
  end
end
