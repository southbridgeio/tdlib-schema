module TD::Types
  # Autosave settings for some type of chats were updated.
  #
  # @attr scope [TD::Types::AutosaveSettingsScope] Type of chats for which autosave settings were updated.
  # @attr settings [TD::Types::ScopeAutosaveSettings, nil] The new autosave settings; may be null if the settings are
  #   reset to default.
  class Update::AutosaveSettings < Update
    attribute :scope, TD::Types::AutosaveSettingsScope
    attribute :settings, TD::Types::ScopeAutosaveSettings.optional.default(nil)
  end
end
