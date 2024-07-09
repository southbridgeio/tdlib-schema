module TD::Types
  # Describes an instant view page for a web page.
  #
  # @attr page_blocks [Array<TD::Types::PageBlock>] Content of the web page.
  # @attr view_count [Integer] Number of the instant view views; 0 if unknown.
  # @attr version [Integer] Version of the instant view; currently, can be 1 or 2.
  # @attr is_rtl [Boolean] True, if the instant view must be shown from right to left.
  # @attr is_full [Boolean] True, if the instant view contains the full page.
  #   A network request might be needed to get the full web page instant view.
  # @attr feedback_link [TD::Types::InternalLinkType] An internal link to be opened to leave feedback about the instant
  #   view.
  class WebPageInstantView < Base
    attribute :page_blocks, TD::Types::Array.of(TD::Types::PageBlock)
    attribute :view_count, TD::Types::Coercible::Integer
    attribute :version, TD::Types::Coercible::Integer
    attribute :is_rtl, TD::Types::Bool
    attribute :is_full, TD::Types::Bool
    attribute :feedback_link, TD::Types::InternalLinkType
  end
end
