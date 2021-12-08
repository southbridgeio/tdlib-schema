module TD::Types
  # A media timestamp.
  #
  # @attr media_timestamp [Integer] Timestamp from which a video/audio/video note/voice note playing must start, in
  #   seconds.
  #   The media can be in the content or the web page preview of the current message, or in the same places in the
  #   replied message.
  class TextEntityType::MediaTimestamp < TextEntityType
    attribute :media_timestamp, TD::Types::Coercible::Integer
  end
end
