module TD::Types
  # Describes the exact type of problem with a call.
  class CallProblem < Base
    %w[
      echo
      noise
      interruptions
      distorted_speech
      silent_local
      silent_remote
      dropped
      distorted_video
      pixelated_video
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/call_problem/#{type}"
    end
  end
end
