require 'json'
require 'stringio'

def diagonalDifference(arr)
    len = arr.length
    primary_sum = 0
    (0...len).each do |i|
        primary_sum += arr[i][i]
    end 

    secondary_sum = 0
    (0...len).each do |i|
        secondary_sum += arr[i][len-1-i]
    end 
    difference = primary_sum - secondary_sum
    return difference.abs
end

output_path = ENV['OUTPUT_PATH'] || '04.txt'
fptr = File.open(output_path, 'w')
n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference(arr)

fptr.write result
fptr.write "\n"

fptr.close()