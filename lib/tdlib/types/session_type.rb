module TD::Types
  # Represents the type of session.
  class SessionType < Base
    %w[
      android
      apple
      brave
      chrome
      edge
      firefox
      ipad
      iphone
      linux
      mac
      opera
      safari
      ubuntu
      unknown
      vivaldi
      windows
      xbox
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/session_type/#{type}"
    end
  end
end
