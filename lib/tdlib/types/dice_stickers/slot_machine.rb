module TD::Types
  # Animated stickers to be combined into a slot machine.
  #
  # @attr background [TD::Types::Sticker] The animated sticker with the slot machine background.
  #   The background animation must start playing after all reel animations finish.
  # @attr lever [TD::Types::Sticker] The animated sticker with the lever animation.
  #   The lever animation must play once in the initial dice state.
  # @attr left_reel [TD::Types::Sticker] The animated sticker with the left reel.
  # @attr center_reel [TD::Types::Sticker] The animated sticker with the center reel.
  # @attr right_reel [TD::Types::Sticker] The animated sticker with the right reel.
  class DiceStickers::SlotMachine < DiceStickers
    attribute :background, TD::Types::Sticker
    attribute :lever, TD::Types::Sticker
    attribute :left_reel, TD::Types::Sticker
    attribute :center_reel, TD::Types::Sticker
    attribute :right_reel, TD::Types::Sticker
  end
end
