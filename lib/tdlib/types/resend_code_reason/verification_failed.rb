module TD::Types
  # The code is re-sent, because device verification has failed.
  #
  # @attr error_message [TD::Types::String] Cause of the verification failure, for example,
  #   PLAY_SERVICES_NOT_AVAILABLE, APNS_RECEIVE_TIMEOUT, or APNS_INIT_FAILED.
  class ResendCodeReason::VerificationFailed < ResendCodeReason
    attribute :error_message, TD::Types::String
  end
end
