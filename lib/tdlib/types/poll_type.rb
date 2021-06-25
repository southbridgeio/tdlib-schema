module TD::Types
  # Describes the type of a poll.
  class PollType < Base
    %w[
      regular
      quiz
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/poll_type/#{type}"
    end
  end
end
