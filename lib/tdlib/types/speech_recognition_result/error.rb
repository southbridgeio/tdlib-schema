module TD::Types
  # The speech recognition failed.
  #
  # @attr error [TD::Types::Error] Recognition error.
  #   An error with a message "MSG_VOICE_TOO_LONG" is returned when media duration is too big to be recognized.
  class SpeechRecognitionResult::Error < SpeechRecognitionResult
    attribute :error, TD::Types::Error
  end
end
