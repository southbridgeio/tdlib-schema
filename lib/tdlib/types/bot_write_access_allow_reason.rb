module TD::Types
  # Describes a reason why a bot was allowed to write messages to the current user.
  class BotWriteAccessAllowReason < Base
    %w[
      connected_website
      added_to_attachment_menu
      launched_web_app
      accepted_request
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/bot_write_access_allow_reason/#{type}"
    end
  end
end
