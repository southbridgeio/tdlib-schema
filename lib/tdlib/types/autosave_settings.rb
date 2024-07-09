module TD::Types
  # Describes autosave settings.
  #
  # @attr private_chat_settings [TD::Types::ScopeAutosaveSettings] Default autosave settings for private chats.
  # @attr group_settings [TD::Types::ScopeAutosaveSettings] Default autosave settings for basic group and supergroup
  #   chats.
  # @attr channel_settings [TD::Types::ScopeAutosaveSettings] Default autosave settings for channel chats.
  # @attr exceptions [Array<TD::Types::AutosaveSettingsException>] Autosave settings for specific chats.
  class AutosaveSettings < Base
    attribute :private_chat_settings, TD::Types::ScopeAutosaveSettings
    attribute :group_settings, TD::Types::ScopeAutosaveSettings
    attribute :channel_settings, TD::Types::ScopeAutosaveSettings
    attribute :exceptions, TD::Types::Array.of(TD::Types::AutosaveSettingsException)
  end
end
