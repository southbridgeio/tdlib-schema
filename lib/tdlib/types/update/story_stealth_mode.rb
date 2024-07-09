module TD::Types
  # Story stealth mode settings have changed.
  #
  # @attr active_until_date [Integer] Point in time (Unix timestamp) until stealth mode is active; 0 if it is disabled.
  # @attr cooldown_until_date [Integer] Point in time (Unix timestamp) when stealth mode can be enabled again; 0 if
  #   there is no active cooldown.
  class Update::StoryStealthMode < Update
    attribute :active_until_date, TD::Types::Coercible::Integer
    attribute :cooldown_until_date, TD::Types::Coercible::Integer
  end
end
