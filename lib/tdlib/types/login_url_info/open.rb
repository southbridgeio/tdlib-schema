module TD::Types
  # An HTTP URL needs to be open.
  #
  # @attr url [TD::Types::String] The URL to open.
  # @attr skip_confirmation [Boolean] True, if there is no need to show an ordinary open URL confirmation.
  class LoginUrlInfo::Open < LoginUrlInfo
    attribute :url, TD::Types::String
    attribute :skip_confirmation, TD::Types::Bool
  end
end
