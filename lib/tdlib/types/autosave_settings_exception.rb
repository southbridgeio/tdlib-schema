module TD::Types
  # Contains autosave settings for a chat, which overrides default settings for the corresponding scope.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr settings [TD::Types::ScopeAutosaveSettings] Autosave settings for the chat.
  class AutosaveSettingsException < Base
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :settings, TD::Types::ScopeAutosaveSettings
  end
end
