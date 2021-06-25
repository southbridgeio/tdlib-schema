module TD::Types
  # Describes a group call join response.
  class GroupCallJoinResponse < Base
    %w[
      webrtc
      stream
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/group_call_join_response/#{type}"
    end
  end
end
