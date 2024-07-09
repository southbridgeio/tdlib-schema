module TD::Types
  # The user connected a website by logging in using Telegram Login Widget on it.
  #
  # @attr domain_name [TD::Types::String] Domain name of the connected website.
  class BotWriteAccessAllowReason::ConnectedWebsite < BotWriteAccessAllowReason
    attribute :domain_name, TD::Types::String
  end
end
