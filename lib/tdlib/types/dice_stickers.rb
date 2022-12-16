module TD::Types
  # Contains animated stickers which must be used for dice animation rendering.
  class DiceStickers < Base
    %w[
      regular
      slot_machine
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/dice_stickers/#{type}"
    end
  end
end
