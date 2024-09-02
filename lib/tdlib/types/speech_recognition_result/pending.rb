module TD::Types
  # The speech recognition is ongoing.
  #
  # @attr partial_text [TD::Types::String] Partially recognized text.
  class SpeechRecognitionResult::Pending < SpeechRecognitionResult
    attribute :partial_text, TD::Types::String
  end
end
