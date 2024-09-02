module TD::Types
  # A text message.
  #
  # @attr text [TD::Types::FormattedText] Text of the message.
  # @attr link_preview [TD::Types::LinkPreview, nil] A link preview attached to the message; may be null.
  # @attr link_preview_options [TD::Types::LinkPreviewOptions, nil] Options which were used for generation of the link
  #   preview; may be null if default options were used.
  class MessageContent::Text < MessageContent
    attribute :text, TD::Types::FormattedText
    attribute :link_preview, TD::Types::LinkPreview.optional.default(nil)
    attribute :link_preview_options, TD::Types::LinkPreviewOptions.optional.default(nil)
  end
end
