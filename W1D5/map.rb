class Map
  def initialize
    @store = []
  end

  def set(key,value)
    @store << [key, value] if
  end

  def get(key)
    @store.
  end

  def delete(key)
    @store.each { |el| @store.delete(el) if el.include?(key)}
  end

  def show
    p @store
  end
end

map = Map.new
