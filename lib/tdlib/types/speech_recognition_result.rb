module TD::Types
  # Describes result of speech recognition in a voice note.
  class SpeechRecognitionResult < Base
    %w[
      pending
      text
      error
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/speech_recognition_result/#{type}"
    end
  end
end
