module TD::Types
  # The payload for a callback button requiring password.
  #
  # @attr password [String] The password for the current user.
  # @attr data [String] Data that was attached to the callback button.
  class CallbackQueryPayload::DataWithPassword < CallbackQueryPayload
    attribute :password, TD::Types::String
    attribute :data, TD::Types::String
  end
end
