module TD::Types
  # Describes why the current user can't add reactions to the message, despite some other users can.
  class ReactionUnavailabilityReason < Base
    %w[
      anonymous_administrator
      guest
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/reaction_unavailability_reason/#{type}"
    end
  end
end
