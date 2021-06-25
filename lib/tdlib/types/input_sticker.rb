module TD::Types
  # Describes a sticker that needs to be added to a sticker set.
  class InputSticker < Base
    %w[
      static
      animated
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_sticker/#{type}"
    end
  end
end
