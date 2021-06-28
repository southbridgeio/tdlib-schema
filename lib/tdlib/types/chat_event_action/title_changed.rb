module TD::Types
  # The chat title was changed.
  #
  # @attr old_title [TD::Types::String] Previous chat title.
  # @attr new_title [TD::Types::String] New chat title.
  class ChatEventAction::TitleChanged < ChatEventAction
    attribute :old_title, TD::Types::String
    attribute :new_title, TD::Types::String
  end
end
