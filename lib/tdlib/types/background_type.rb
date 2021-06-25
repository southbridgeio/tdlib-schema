module TD::Types
  # Describes the type of a background.
  class BackgroundType < Base
    %w[
      wallpaper
      pattern
      fill
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/background_type/#{type}"
    end
  end
end
