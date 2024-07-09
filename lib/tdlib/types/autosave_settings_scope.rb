module TD::Types
  # Describes scope of autosave settings.
  class AutosaveSettingsScope < Base
    %w[
      private_chats
      group_chats
      channel_chats
      chat
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/autosave_settings_scope/#{type}"
    end
  end
end
