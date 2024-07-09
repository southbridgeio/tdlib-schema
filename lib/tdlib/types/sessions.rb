module TD::Types
  # Contains a list of sessions.
  #
  # @attr sessions [Array<TD::Types::Session>] List of sessions.
  # @attr inactive_session_ttl_days [Integer] Number of days of inactivity before sessions will automatically be
  #   terminated; 1-366 days.
  class Sessions < Base
    attribute :sessions, TD::Types::Array.of(TD::Types::Session)
    attribute :inactive_session_ttl_days, TD::Types::Coercible::Integer
  end
end
