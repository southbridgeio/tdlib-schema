module TD::Types
  # Describes type of paid media to sent.
  class InputPaidMediaType < Base
    %w[
      photo
      video
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_paid_media_type/#{type}"
    end
  end
end
