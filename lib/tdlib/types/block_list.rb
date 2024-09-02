module TD::Types
  # Describes type of block list.
  class BlockList < Base
    %w[
      main
      stories
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/block_list/#{type}"
    end
  end
end
