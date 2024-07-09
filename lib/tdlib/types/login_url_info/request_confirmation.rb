module TD::Types
  # An authorization confirmation dialog needs to be shown to the user.
  #
  # @attr url [TD::Types::String] An HTTP URL to be opened.
  # @attr domain [TD::Types::String] A domain of the URL.
  # @attr bot_user_id [Integer] User identifier of a bot linked with the website.
  # @attr request_write_access [Boolean] True, if the user must be asked for the permission to the bot to send them
  #   messages.
  class LoginUrlInfo::RequestConfirmation < LoginUrlInfo
    attribute :url, TD::Types::String
    attribute :domain, TD::Types::String
    attribute :bot_user_id, TD::Types::Coercible::Integer
    attribute :request_write_access, TD::Types::Bool
  end
end
