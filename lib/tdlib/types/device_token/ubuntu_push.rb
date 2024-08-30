module TD::Types
  # A token for Ubuntu Push Client service.
  #
  # @attr token [TD::Types::String, nil] Token; may be empty to deregister a device.
  class DeviceToken::UbuntuPush < DeviceToken
    attribute :token, TD::Types::String.optional.default(nil)
  end
end
