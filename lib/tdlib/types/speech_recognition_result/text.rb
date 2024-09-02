module TD::Types
  # The speech recognition successfully finished.
  #
  # @attr text [TD::Types::String] Recognized text.
  class SpeechRecognitionResult::Text < SpeechRecognitionResult
    attribute :text, TD::Types::String
  end
end
