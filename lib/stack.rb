# your code here
class Stack

    attr_accessor :stack

    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        if @limit && stack.length < @limit || @limit == nil
        @stack.push(value)
        else 
            raise 'Stack Overflow'
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.size
    end

    def empty?
        if @stack.length == 0
            true
        else false
        end
    end

    def full?
        if @stack.length == @limit
            true
        else false
        end
    end

    def search(value)
        value_index = @stack.find_index(value)
        if value_index
            @stack.length - 1 - value_index
        else -1
        end
    end


end