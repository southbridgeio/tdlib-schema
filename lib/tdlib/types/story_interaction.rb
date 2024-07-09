module TD::Types
  # Represents interaction with a story.
  #
  # @attr actor_id [TD::Types::MessageSender] Identifier of the user or chat that made the interaction.
  # @attr interaction_date [Integer] Approximate point in time (Unix timestamp) when the interaction happened.
  # @attr block_list [TD::Types::BlockList, nil] Block list to which the actor is added; may be null if none or for
  #   chat stories.
  # @attr type [TD::Types::StoryInteractionType] Type of the interaction.
  class StoryInteraction < Base
    attribute :actor_id, TD::Types::MessageSender
    attribute :interaction_date, TD::Types::Coercible::Integer
    attribute :block_list, TD::Types::BlockList.optional.default(nil)
    attribute :type, TD::Types::StoryInteractionType
  end
end
