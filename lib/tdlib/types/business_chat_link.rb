module TD::Types
  # Contains information about a business chat link.
  #
  # @attr link [TD::Types::String] The HTTPS link.
  # @attr text [TD::Types::FormattedText] Message draft text that will be added to the input field.
  # @attr title [TD::Types::String] Link title.
  # @attr view_count [Integer] Number of times the link was used.
  class BusinessChatLink < Base
    attribute :link, TD::Types::String
    attribute :text, TD::Types::FormattedText
    attribute :title, TD::Types::String
    attribute :view_count, TD::Types::Coercible::Integer
  end
end
