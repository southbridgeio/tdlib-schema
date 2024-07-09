module TD::Types
  # A message was sent by an opened Web App, so the Web App needs to be closed.
  #
  # @attr web_app_launch_id [Integer] Identifier of Web App launch.
  class Update::WebAppMessageSent < Update
    attribute :web_app_launch_id, TD::Types::Coercible::Integer
  end
end
