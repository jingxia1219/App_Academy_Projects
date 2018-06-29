class LRUCache

    def initialize(length)
      @storage = []
      @length = length
    end

    def count
      # returns number of elements currently in cache
      storage.length
    end

    def add(el)
      storage.shift if count == length
      if storage.include?(el)
        storage.delete(el)
        storage << el
      else
         storage << el
      end
      storage
      # adds element to cache according to LRU principle
    end

    def show
      # shows the items in the cache, with the LRU item first
     p  storage
     nil
    end

    private
    # helper methods go here!
    attr_reader :storage, :length
  end

  johnny_cache = LRUCache.new(4)

    johnny_cache.add("I walk the line")
    johnny_cache.add(5)

    johnny_cache.count # => returns 2

    johnny_cache.add([1,2,3])
    johnny_cache.add(5)
    johnny_cache.add(-5)
    johnny_cache.show
    johnny_cache.add({a: 1, b: 2, c: 3})
    johnny_cache.show
    johnny_cache.add([1,2,3,4])
    johnny_cache.show
    johnny_cache.add("I walk the line")
    johnny_cache.add(:ring_of_fire)
    johnny_cache.add("I walk the line")
    johnny_cache.add({a: 1, b: 2, c: 3})


    johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
