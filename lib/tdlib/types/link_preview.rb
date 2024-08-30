module TD::Types
  # Describes a link preview.
  #
  # @attr url [TD::Types::String] Original URL of the link.
  # @attr display_url [TD::Types::String] URL to display.
  # @attr site_name [TD::Types::String] Short name of the site (e.g., Google Docs, App Store).
  # @attr title [TD::Types::String] Title of the content.
  # @attr description [TD::Types::FormattedText] Description of the content.
  # @attr type [TD::Types::LinkPreviewType] Type of the link preview.
  # @attr has_large_media [Boolean] True, if size of media in the preview can be changed.
  # @attr show_large_media [Boolean] True, if large media preview must be shown; otherwise, the media preview must be
  #   shown small and only the first frame must be shown for videos.
  # @attr show_media_above_description [Boolean] True, if media must be shown above link preview description;
  #   otherwise, the media must be shown below the description.
  # @attr skip_confirmation [Boolean] True, if there is no need to show an ordinary open URL confirmation, when opening
  #   the URL from the preview, because the URL is shown in the message text in clear.
  # @attr show_above_text [Boolean] True, if the link preview must be shown above message text; otherwise, the link
  #   preview must be shown below the message text.
  # @attr instant_view_version [Integer] Version of instant view (currently, can be 1 or 2) for the web page; 0 if
  #   none.
  class LinkPreview < Base
    attribute :url, TD::Types::String
    attribute :display_url, TD::Types::String
    attribute :site_name, TD::Types::String
    attribute :title, TD::Types::String
    attribute :description, TD::Types::FormattedText
    attribute :type, TD::Types::LinkPreviewType
    attribute :has_large_media, TD::Types::Bool
    attribute :show_large_media, TD::Types::Bool
    attribute :show_media_above_description, TD::Types::Bool
    attribute :skip_confirmation, TD::Types::Bool
    attribute :show_above_text, TD::Types::Bool
    attribute :instant_view_version, TD::Types::Coercible::Integer
  end
end
