module TD::Types
  # Describes the quality of a group call video.
  class GroupCallVideoQuality < Base
    %w[
      thumbnail
      medium
      full
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/group_call_video_quality/#{type}"
    end
  end
end
