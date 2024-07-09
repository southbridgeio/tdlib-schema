module TD::Types
  # Represents a data needed to subscribe for push notifications through registerDevice method.
  # To use specific push notification service, the correct application platform must be specified and a valid server
  #   authentication data must be uploaded at https://my.telegram.org.
  class DeviceToken < Base
    %w[
      firebase_cloud_messaging
      apple_push
      apple_push_vo_ip
      windows_push
      microsoft_push
      microsoft_push_vo_ip
      web_push
      simple_push
      ubuntu_push
      black_berry_push
      tizen_push
      huawei_push
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/device_token/#{type}"
    end
  end
end
