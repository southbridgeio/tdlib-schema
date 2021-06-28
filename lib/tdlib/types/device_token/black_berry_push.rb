module TD::Types
  # A token for BlackBerry Push Service.
  #
  # @attr token [TD::Types::String, nil] Token; may be empty to de-register a device.
  class DeviceToken::BlackBerryPush < DeviceToken
    attribute :token, TD::Types::String.optional.default(nil)
  end
end
