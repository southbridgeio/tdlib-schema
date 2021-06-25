module TD::Types
  # A static photo in JPEG format.
  #
  # @attr photo [TD::Types::InputFile] Photo to be set as profile photo.
  #   Only {TD::Types::InputFile::Local} and {TD::Types::InputFile::Generated} are allowed.
  class InputChatPhoto::Static < InputChatPhoto
    attribute :photo, TD::Types::InputFile
  end
end
