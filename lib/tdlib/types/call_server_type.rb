module TD::Types
  # Describes the type of a call server.
  class CallServerType < Base
    %w[
      telegram_reflector
      webrtc
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/call_server_type/#{type}"
    end
  end
end
