require 'my_enumerable'

class MyList
    include MyEnumerable

    def initialize(list)
        @list = list
    end

    def each
        (0...@list.length).each do |i| 
            yield @list[i]
    end
end