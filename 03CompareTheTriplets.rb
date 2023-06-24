require 'json'
require 'stringio'

def compareTriplets(a, b)
    arr = [0, 0]
    a.zip(b).each do |x, y|
      arr[0] += 1 if x > y
      arr[1] += 1 if x < y
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