module TD::Types
  # The list of available message effects has changed.
  #
  # @attr reaction_effect_ids [Array<Integer>] The new list of available message effects from emoji reactions.
  # @attr sticker_effect_ids [Array<Integer>] The new list of available message effects from Premium stickers.
  class Update::AvailableMessageEffects < Update
    attribute :reaction_effect_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :sticker_effect_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
