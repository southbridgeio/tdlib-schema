module TD::Types
  # The chat background was changed.
  #
  # @attr old_background [TD::Types::ChatBackground, nil] Previous background; may be null if none.
  # @attr new_background [TD::Types::ChatBackground, nil] New background; may be null if none.
  class ChatEventAction::BackgroundChanged < ChatEventAction
    attribute :old_background, TD::Types::ChatBackground.optional.default(nil)
    attribute :new_background, TD::Types::ChatBackground.optional.default(nil)
  end
end
