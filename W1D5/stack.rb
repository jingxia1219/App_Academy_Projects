class Stack #LIFO last in first out
    def initialize
      # create ivar to store stack here!
      @store = []
    end

    def push(el)
      # adds an element to the stack
      store << el
      self
    end

    def pop
      # removes one element from the stack
      store.pop
      self
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      p store.last.dup
    end

    private
    attr_reader :store
  end

  stack = Stack.new
  stack.push(1)
    stack.push(2)
  stack.peek
  stack.pop
  stack.peek
