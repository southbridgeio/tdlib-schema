module TD::Types
  # Contains 0-based match position.
  #
  # @attr position [Integer] The position of the match.
  class FoundPosition < Base
    attribute :position, TD::Types::Coercible::Integer
  end
end
