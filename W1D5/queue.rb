class Queue #FIFO first in first out

  def initialize
    @store = []
  end

  def enqueue(el)
    @store << el
  end

  def dequeue
    @store.shift
  end

  def peek
    puts @store.last
  end

end


queue = Queue.new
queue.enqueue(1)
# queue.enqueue(2)
queue.peek # => 1
queue.dequeue
queue.peek
