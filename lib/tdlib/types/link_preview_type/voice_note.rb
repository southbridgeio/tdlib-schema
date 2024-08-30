module TD::Types
  # The link is a link to a voice note message.
  #
  # @attr voice_note [TD::Types::VoiceNote] The voice note.
  class LinkPreviewType::VoiceNote < LinkPreviewType
    attribute :voice_note, TD::Types::VoiceNote
  end
end
