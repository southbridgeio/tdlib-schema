module TD::Types
  # Represents a secret chat.
  #
  # @attr id [Integer] Secret chat identifier.
  # @attr user_id [Integer] Identifier of the chat partner.
  # @attr state [TD::Types::SecretChatState] State of the secret chat.
  # @attr is_outbound [Boolean] True, if the chat was created by the current user; false otherwise.
  # @attr key_hash [String] Hash of the currently used key for comparison with the hash of the chat partner's key.
  #   This is a string of 36 little-endian bytes, which must be split into groups of 2 bits, each denoting a pixel of
  #   one of 4 colors FFFFFF, D5E6F3, 2D5775, and 2F99C9.
  #   The pixels must be used to make a 12x12 square image filled from left to right, top to bottom.
  #   Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32
  #   2-digit hex numbers.
  # @attr layer [Integer] Secret chat layer; determines features supported by the chat partner's application.
  #   Nested text entities and underline and strikethrough entities are supported if the layer >= 101, files bigger
  #   than 2000MB are supported if the layer >= 143, spoiler and custom emoji text entities are supported if the layer >=
  #   144.
  class SecretChat < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :state, TD::Types::SecretChatState
    attribute :is_outbound, TD::Types::Bool
    attribute :key_hash, TD::Types::Coercible::String
    attribute :layer, TD::Types::Coercible::Integer
  end
end
