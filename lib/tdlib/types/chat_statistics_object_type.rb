module TD::Types
  # Describes type of object, for which statistics are provided.
  class ChatStatisticsObjectType < Base
    %w[
      message
      story
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_statistics_object_type/#{type}"
    end
  end
end
