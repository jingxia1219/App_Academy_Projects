require 'byebug'
class Array
  #['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
  def longest_fish
    longest = nil
    self.each_with_index do |fish1, idx1|
      self.each_with_index do |fish2, idx2|
        longest = fish1 if fish1.length > fish2.length
    end
   end
   longest
  end

  def merge_sort_fish
    return self if self.length < 2
     middle = length / 2
     left, right  = self.take(middle), self.drop(middle)
     sorted_left, sorted_right = left.merge_sort_fish, right.merge_sort_fish
     sorted_fish = Array.longer(sorted_left,sorted_right)
  end

  def self.longer(left,right)
     merged = []
     until left.empty? || right.empty?
      left.first.length < right.first.length ? merged << left.shift : merged << right.shift
    end
    merged + left + right
  end

  def nlogn_longest_fish
    self.merge_sort_fish.last
  end

  def linear_longest_fish
     longest_fish = self.first
     self.each { |el| longest_fish = el if el.length > longest_fish.length }
     longest_fish
  end

  def
end

# p ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'].linear_longest_fish


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir,tiles_away)
  tiles_array.each_with_index { |el,idx| return idx if dir == el }
end


def constant_dance(dir,tiles_away)
 tiles = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}
tiles[dir]
end
