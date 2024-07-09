module TD::Types
  # A voice note message.
  #
  # @attr voice_note [TD::Types::InputFile] Voice note to be sent.
  #   The voice note must be encoded with the Opus codec and stored inside an OGG container with a single audio
  #   channel, or be in MP3 or M4A format as regular audio.
  # @attr duration [Integer] Duration of the voice note, in seconds.
  # @attr waveform [String] Waveform representation of the voice note in 5-bit format.
  # @attr caption [TD::Types::FormattedText, nil] Voice note caption; may be null if empty; pass null to use an empty
  #   caption; 0-getOption("message_caption_length_max") characters.
  # @attr self_destruct_type [TD::Types::MessageSelfDestructType, nil] Voice note self-destruct type; may be null if
  #   none; pass null if none; private chats only.
  class InputMessageContent::VoiceNote < InputMessageContent
    attribute :voice_note, TD::Types::InputFile
    attribute :duration, TD::Types::Coercible::Integer
    attribute :waveform, TD::Types::Coercible::String
    attribute :caption, TD::Types::FormattedText.optional.default(nil)
    attribute :self_destruct_type, TD::Types::MessageSelfDestructType.optional.default(nil)
  end
end
