class Stack
    def initialize
      # create ivar to store stack here!
      @store = []
    end

    def push(el)
      # adds an element to the stack
      @store << el
    end

    def pop
      # removes one element from the stack
      @store.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      p @store.last
    end
  end

  stack = Stack.new
  stack.push(1)
  stack.peek
  stack.pop
  stack.peek
