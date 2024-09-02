module TD::Types
  # Describes source of a chat boost.
  class ChatBoostSource < Base
    %w[
      gift_code
      giveaway
      premium
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_boost_source/#{type}"
    end
  end
end
