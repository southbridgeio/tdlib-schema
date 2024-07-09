module TD::Types
  # Contains information about a Web App found by its short name.
  #
  # @attr web_app [TD::Types::WebApp] The Web App.
  # @attr request_write_access [Boolean] True, if the user must be asked for the permission to the bot to send them
  #   messages.
  # @attr skip_confirmation [Boolean] True, if there is no need to show an ordinary open URL confirmation before
  #   opening the Web App.
  #   The field must be ignored and confirmation must be shown anyway if the Web App link was hidden.
  class FoundWebApp < Base
    attribute :web_app, TD::Types::WebApp
    attribute :request_write_access, TD::Types::Bool
    attribute :skip_confirmation, TD::Types::Bool
  end
end
