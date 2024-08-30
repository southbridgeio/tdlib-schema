module TD::Types
  # The first unconfirmed session has changed.
  #
  # @attr session [TD::Types::UnconfirmedSession, nil] The unconfirmed session; may be null if none.
  class Update::UnconfirmedSession < Update
    attribute :session, TD::Types::UnconfirmedSession.optional.default(nil)
  end
end
