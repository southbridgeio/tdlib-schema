module TD::Types
  # Autosave settings applied to a chat.
  #
  # @attr chat_id [Integer] Chat identifier.
  class AutosaveSettingsScope::Chat < AutosaveSettingsScope
    attribute :chat_id, TD::Types::Coercible::Integer
  end
end
