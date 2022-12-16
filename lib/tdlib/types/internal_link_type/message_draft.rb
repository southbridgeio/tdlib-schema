module TD::Types
  # The link contains a message draft text.
  # A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the
  #   input field.
  #
  # @attr text [TD::Types::FormattedText] Message draft text.
  # @attr contains_link [Boolean] True, if the first line of the text contains a link.
  #   If true, the input field needs to be focused and the text after the link must be selected.
  class InternalLinkType::MessageDraft < InternalLinkType
    attribute :text, TD::Types::FormattedText
    attribute :contains_link, TD::Types::Bool
  end
end
