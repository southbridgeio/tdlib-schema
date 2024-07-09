module TD::Types
  # Represents result of checking whether a name can be used for a new sticker set.
  class CheckStickerSetNameResult < Base
    %w[
      ok
      name_invalid
      name_occupied
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/check_sticker_set_name_result/#{type}"
    end
  end
end
