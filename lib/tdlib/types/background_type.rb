module TD::Types
  # Describes the type of background.
  class BackgroundType < Base
    %w[
      wallpaper
      pattern
      fill
      chat_theme
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/background_type/#{type}"
    end
  end
end
