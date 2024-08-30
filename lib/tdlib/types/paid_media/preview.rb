module TD::Types
  # The media is hidden until the invoice is paid.
  #
  # @attr width [Integer] Media width; 0 if unknown.
  # @attr height [Integer] Media height; 0 if unknown.
  # @attr duration [Integer] Media duration, in seconds; 0 if unknown.
  # @attr minithumbnail [TD::Types::Minithumbnail, nil] Media minithumbnail; may be null.
  class PaidMedia::Preview < PaidMedia
    attribute :width, TD::Types::Coercible::Integer
    attribute :height, TD::Types::Coercible::Integer
    attribute :duration, TD::Types::Coercible::Integer
    attribute :minithumbnail, TD::Types::Minithumbnail.optional.default(nil)
  end
end
