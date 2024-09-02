module TD::Types
  # The link is a link to a cloud theme.
  # TDLib has no theme support yet.
  #
  # @attr documents [Array<TD::Types::Document>] The list of files with theme description.
  # @attr settings [TD::Types::ThemeSettings] Settings for the cloud theme.
  class LinkPreviewType::Theme < LinkPreviewType
    attribute :documents, TD::Types::Array.of(TD::Types::Document)
    attribute :settings, TD::Types::ThemeSettings
  end
end
