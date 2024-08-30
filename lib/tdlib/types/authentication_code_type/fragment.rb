module TD::Types
  # A digit-only authentication code is delivered to https://fragment.com.
  # The user must be logged in there via a wallet owning the phone number's NFT.
  #
  # @attr url [TD::Types::String] URL to open to receive the code.
  # @attr length [Integer] Length of the code.
  class AuthenticationCodeType::Fragment < AuthenticationCodeType
    attribute :url, TD::Types::String
    attribute :length, TD::Types::Coercible::Integer
  end
end
