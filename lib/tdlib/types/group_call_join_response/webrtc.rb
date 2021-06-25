module TD::Types
  # Contains data needed to join the group call with WebRTC.
  #
  # @attr payload [TD::Types::GroupCallPayload] Group call payload to pass to tgcalls.
  # @attr candidates [Array<TD::Types::GroupCallJoinResponseCandidate>] Join response candidates to pass to tgcalls.
  class GroupCallJoinResponse::Webrtc < GroupCallJoinResponse
    attribute :payload, TD::Types::GroupCallPayload
    attribute :candidates, TD::Types::Array.of(TD::Types::GroupCallJoinResponseCandidate)
  end
end
