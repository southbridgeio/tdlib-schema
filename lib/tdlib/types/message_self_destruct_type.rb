module TD::Types
  # Describes when a message will be self-destructed.
  class MessageSelfDestructType < Base
    %w[
      timer
      immediately
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_self_destruct_type/#{type}"
    end
  end
end
