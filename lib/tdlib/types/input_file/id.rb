module TD::Types
  # A file defined by its unique identifier.
  #
  # @attr id [Integer] Unique file identifier.
  class InputFile::Id < InputFile
    attribute :id, TD::Types::Coercible::Integer
  end
end
