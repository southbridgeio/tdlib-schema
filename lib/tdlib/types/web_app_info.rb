module TD::Types
  # Contains information about a Web App.
  #
  # @attr launch_id [Integer] Unique identifier for the Web App launch.
  # @attr url [TD::Types::String] A Web App URL to open in a web view.
  class WebAppInfo < Base
    attribute :launch_id, TD::Types::Coercible::Integer
    attribute :url, TD::Types::String
  end
end
