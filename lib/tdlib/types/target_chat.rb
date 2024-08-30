module TD::Types
  # Describes the target chat to be opened.
  class TargetChat < Base
    %w[
      current
      chosen
      internal_link
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/target_chat/#{type}"
    end
  end
end
