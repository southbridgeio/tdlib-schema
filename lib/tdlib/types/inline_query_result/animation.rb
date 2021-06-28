module TD::Types
  # Represents an animation file.
  #
  # @attr id [TD::Types::String] Unique identifier of the query result.
  # @attr animation [TD::Types::Animation] Animation file.
  # @attr title [TD::Types::String] Animation title.
  class InlineQueryResult::Animation < InlineQueryResult
    attribute :id, TD::Types::String
    attribute :animation, TD::Types::Animation
    attribute :title, TD::Types::String
  end
end
