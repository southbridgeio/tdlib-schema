module TD::Types
  # The chat description was changed.
  #
  # @attr old_description [TD::Types::String] Previous chat description.
  # @attr new_description [TD::Types::String] New chat description.
  class ChatEventAction::DescriptionChanged < ChatEventAction
    attribute :old_description, TD::Types::String
    attribute :new_description, TD::Types::String
  end
end
