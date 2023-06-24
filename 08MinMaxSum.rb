require 'json'
require 'stringio'

def miniMaxSum(arr)
  sorted_arr = arr.sort
  min_sum = sorted_arr[0..3].sum
  max_sum = sorted_arr[-4..-1].sum
  puts "#{min_sum} #{max_sum}"
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum(arr)