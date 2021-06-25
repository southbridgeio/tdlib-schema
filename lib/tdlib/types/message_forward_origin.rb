module TD::Types
  # Contains information about the origin of a forwarded message.
  class MessageForwardOrigin < Base
    %w[
      user
      chat
      hidden_user
      channel
      message_import
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_forward_origin/#{type}"
    end
  end
end
