module TD::Types
  # The media is a photo.
  # The photo must be at most 10 MB in size.
  # The photo's width and height must not exceed 10000 in total.
  # Width and height ratio must be at most 20.
  class InputPaidMediaType::Photo < InputPaidMediaType
  end
end
