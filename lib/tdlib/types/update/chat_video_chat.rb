module TD::Types
  # A chat video chat state has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr video_chat [TD::Types::VideoChat] New value of video_chat.
  class Update::ChatVideoChat < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :video_chat, TD::Types::VideoChat
  end
end
