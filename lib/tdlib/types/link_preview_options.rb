module TD::Types
  # Options to be used for generation of a link preview.
  #
  # @attr is_disabled [Boolean] True, if link preview must be disabled.
  # @attr url [TD::Types::String] URL to use for link preview.
  #   If empty, then the first URL found in the message text will be used.
  # @attr force_small_media [Boolean] True, if shown media preview must be small; ignored in secret chats or if the URL
  #   isn't explicitly specified.
  # @attr force_large_media [Boolean] True, if shown media preview must be large; ignored in secret chats or if the URL
  #   isn't explicitly specified.
  # @attr show_above_text [Boolean] True, if link preview must be shown above message text; otherwise, the link preview
  #   will be shown below the message text; ignored in secret chats.
  class LinkPreviewOptions < Base
    attribute :is_disabled, TD::Types::Bool
    attribute :url, TD::Types::String
    attribute :force_small_media, TD::Types::Bool
    attribute :force_large_media, TD::Types::Bool
    attribute :show_above_text, TD::Types::Bool
  end
end
