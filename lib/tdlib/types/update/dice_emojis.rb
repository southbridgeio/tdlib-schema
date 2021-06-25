module TD::Types
  # The list of supported dice emojis has changed.
  #
  # @attr emojis [Array<String>] The new list of supported dice emojis.
  class Update::DiceEmojis < Update
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
