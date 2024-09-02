module TD::Types
  # Describes a paid media.
  class PaidMedia < Base
    %w[
      preview
      photo
      video
      unsupported
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/paid_media/#{type}"
    end
  end
end
