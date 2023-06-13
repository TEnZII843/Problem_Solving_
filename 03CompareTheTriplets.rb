#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def compareTriplets(a, b)
    arr = Array.new(2, 0)
    if a[0] > b[0]
        arr[0] += 1 
    elsif a[0] < b[0]
        arr[1] += 1
    end
    if a[1] > b[1]
        arr[0] += 1 
    elsif a[1] < b[1]
        arr[1] += 1
    end
    if a[2] > b[2]
        arr[0] += 1 
    elsif a[2] < b[2]
        arr[1] += 1
    end
    return arr
end

output_path = ENV['OUTPUT_PATH'] || '03.txt'
fptr = File.open(output_path, 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets(a, b) 

fptr.write result.join " "
fptr.write "\n"

fptr.close()