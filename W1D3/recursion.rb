require 'byebug'
def pascal(num)
  return [1] if num.zero?
  result = [1]
  prev = pascal(num - 1)

  (0..prev.length - 2).each do |i|
    result << (prev[i] + prev[i + 1])
  end

  result << 1
  result
 end
 #
 # p pascal(2)
 # p pascal(3)
 # p pascal(4)



 def rec_flatten(arr)
  result = []
  # debugger
  return arr if arr.empty?
   arr.each do |el|
     if el.is_a?(Array)
       result += rec_flatten(el)
     else
       result << el
     end
   end
   result
 end

 rec_flatten([[1],2,[3]])



def range(min, max)
  return [] if min >= max

  return [min] if min == max - 1
   [min] + range(min+1, max)
end

#
# p range(1, 5)
def sum_iter(nums)
  sum = 0
  nums.each { |n| sum += n}
  sum
end

def sum_rec(nums)
  return 0 if nums.empty?
  nums[0] + sum_rec(nums[1..-1])
end

# p sum_rec([1,2,3])

def exponention1(base, power)
  # return 1 if power == 0
  # return base if power == 1
  # base * exponention1(base, power -1)
  power.zero? ? 1 : base*exponention1(base,power -1 )
end
# #
# p exponention1(2,3)
# p exponention1(2,4)

def exponention2(base, power)
  return 1 if power == 0
  return base if power == 1
  if power.even?
    exponention2(base, power/2) ** 2
  elsif power.odd?
    base * exponention2(base,(power - 1 ) / 2 ) ** 2
  end

end
#
# p exponention2(3,5)
# p exponention2(2,4)


def child_retired_money(my_age)
   child_age = my_age / 2
    current_bank_account = child_age**2
     years_till_retire = 65 - child_age
      current_bank_account * years_till_retire
end

# p child_retired_money(30)
# p child_retired_money(50)
#
class Array

  def deep_dup
    self.map { |el| el.is_a?(Array) ? el.deep_dup : el }
  end

end

robot_parts = [
  ["nuts", "bolts", "washers"],
  ["capacitors", "resistors", "inductors"]
]
robot_parts_copy = robot_parts.dup
robot_parts.deep_dup
robot_parts_copy << "mutate?"
# p robot_parts

def fibonacci(n)
  return [] if n < 1
  return [1] if n == 1
  return [1, 1] if n == 2
   result = [1,1]
      until result.length == n
        result << result[-1] + result[-2]
      end
    result
end

def fibonacci_rec(n)
  return [] if n < 1
  return [1] if n == 1
  return [1, 1] if n == 2

  fibonacci_rec(n - 1) << fibonacci_rec(n-1)[-1] + fibonacci_rec(n-1)[-2]
end

# p fibonacci_rec(4)
# p fibonacci_rec(5)
# p fibonacci_rec(8)
=begin
The binary search algorithm begins by comparing the target value to the value of the middle element of the sorted array. If the target value is equal to the middle element's value, then the position is returned and the search is finished. If the target value is less than the middle element's value, then the search continues on the lower half of the array; or if the target value is greater than the middle element's value, then the search continues on the upper half of the array. This process continues, eliminating half of the elements, and comparing the target value to the value of the middle element of the remaining elements - until the target value is either found (and its associated element position is returned), or until the entire array has been searched (and "not found" is returned).

Write a recursive binary search: bsearch(array, target). Note that binary search only works on sorted arrays. Make sure to return the location of the found object (or nil if not found!). Hint: you will probably want to use subarrays.

Make sure that these test cases are working:
=end
def bsearch(array, target)
  return nil  if array.empty?
  mid_idx = array.length / 2
   # debugger
    if array[mid_idx] == target
      return mid_idx
    elsif array[mid_idx] > target
      bsearch(array[0...mid_idx], target)
    else
      return nil unless bsearch(array[mid_idx+1..-1], target)
       mid_idx + 1 + bsearch(array[mid_idx+1..-1], target)
    end
end


# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort(arr)
  return arr if arr.length <= 1

end

def merge

end

def subsets(arr)
  result = [[]]
  last_el = arr[-1]
  return [[]] if last_el.nil?
  result.map { |el| el + [last_el] }

end

p subsets([]) # => [[]]
p subsets([1]) # => [[], [1]]
# p subsets([1, 2]) # => [[], [1], [2], [1, 2]]
# p subsets([1, 2, 3])
# => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]
