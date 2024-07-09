module TD::Types
  # Describes a link preview.
  #
  # @attr url [TD::Types::String] Original URL of the link.
  # @attr display_url [TD::Types::String] URL to display.
  # @attr type [TD::Types::String] Type of the web page.
  #   Can be: article, photo, audio, video, document, profile, app, or something else.
  # @attr site_name [TD::Types::String] Short name of the site (e.g., Google Docs, App Store).
  # @attr title [TD::Types::String] Title of the content.
  # @attr description [TD::Types::FormattedText] Description of the content.
  # @attr photo [TD::Types::Photo, nil] Image representing the content; may be null.
  # @attr embed_url [TD::Types::String] URL to show in the embedded preview.
  # @attr embed_type [TD::Types::String] MIME type of the embedded preview, (e.g., text/html or video/mp4).
  # @attr embed_width [Integer] Width of the embedded preview.
  # @attr embed_height [Integer] Height of the embedded preview.
  # @attr duration [Integer] Duration of the content, in seconds.
  # @attr author [TD::Types::String] Author of the content.
  # @attr has_large_media [Boolean] True, if size of media in the preview can be changed.
  # @attr show_large_media [Boolean] True, if large media preview must be shown; otherwise, the media preview must be
  #   shown small and only the first frame must be shown for videos.
  # @attr skip_confirmation [Boolean] True, if there is no need to show an ordinary open URL confirmation, when opening
  #   the URL from the preview, because the URL is shown in the message text in clear.
  # @attr show_above_text [Boolean] True, if the link preview must be shown above message text; otherwise, the link
  #   preview must be shown below the message text.
  # @attr animation [TD::Types::Animation, nil] Preview of the content as an animation, if available; may be null.
  # @attr audio [TD::Types::Audio, nil] Preview of the content as an audio file, if available; may be null.
  # @attr document [TD::Types::Document, nil] Preview of the content as a document, if available; may be null.
  # @attr sticker [TD::Types::Sticker, nil] Preview of the content as a sticker for small WEBP files, if available; may
  #   be null.
  # @attr video [TD::Types::Video, nil] Preview of the content as a video, if available; may be null.
  # @attr video_note [TD::Types::VideoNote, nil] Preview of the content as a video note, if available; may be null.
  # @attr voice_note [TD::Types::VoiceNote, nil] Preview of the content as a voice note, if available; may be null.
  # @attr story_sender_chat_id [Integer] The identifier of the sender of the previewed story; 0 if none.
  # @attr story_id [Integer] The identifier of the previewed story; 0 if none.
  # @attr stickers [Array<TD::Types::Sticker>] Up to 4 stickers from the sticker set available via the link.
  # @attr instant_view_version [Integer] Version of web page instant view (currently, can be 1 or 2); 0 if none.
  class WebPage < Base
    attribute :url, TD::Types::String
    attribute :display_url, TD::Types::String
    attribute :type, TD::Types::String
    attribute :site_name, TD::Types::String
    attribute :title, TD::Types::String
    attribute :description, TD::Types::FormattedText
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :embed_url, TD::Types::String
    attribute :embed_type, TD::Types::String
    attribute :embed_width, TD::Types::Coercible::Integer
    attribute :embed_height, TD::Types::Coercible::Integer
    attribute :duration, TD::Types::Coercible::Integer
    attribute :author, TD::Types::String
    attribute :has_large_media, TD::Types::Bool
    attribute :show_large_media, TD::Types::Bool
    attribute :skip_confirmation, TD::Types::Bool
    attribute :show_above_text, TD::Types::Bool
    attribute :animation, TD::Types::Animation.optional.default(nil)
    attribute :audio, TD::Types::Audio.optional.default(nil)
    attribute :document, TD::Types::Document.optional.default(nil)
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
    attribute :video, TD::Types::Video.optional.default(nil)
    attribute :video_note, TD::Types::VideoNote.optional.default(nil)
    attribute :voice_note, TD::Types::VoiceNote.optional.default(nil)
    attribute :story_sender_chat_id, TD::Types::Coercible::Integer
    attribute :story_id, TD::Types::Coercible::Integer
    attribute :stickers, TD::Types::Array.of(TD::Types::Sticker)
    attribute :instant_view_version, TD::Types::Coercible::Integer
  end
end
