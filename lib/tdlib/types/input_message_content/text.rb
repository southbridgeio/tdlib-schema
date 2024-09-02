module TD::Types
  # A text message.
  #
  # @attr text [TD::Types::FormattedText] Formatted text to be sent; 0-getOption("message_text_length_max") characters.
  #   Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, ExpandableBlockQuote, Code, Pre,
  #   PreCode, TextUrl and MentionName entities are allowed to be specified manually.
  # @attr link_preview_options [TD::Types::LinkPreviewOptions, nil] Options to be used for generation of a link
  #   preview; may be null if none; pass null to use default link preview options.
  # @attr clear_draft [Boolean] True, if a chat message draft must be deleted.
  class InputMessageContent::Text < InputMessageContent
    attribute :text, TD::Types::FormattedText
    attribute :link_preview_options, TD::Types::LinkPreviewOptions.optional.default(nil)
    attribute :clear_draft, TD::Types::Bool
  end
end
