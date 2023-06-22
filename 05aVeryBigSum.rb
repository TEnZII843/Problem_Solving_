require 'json'
require 'stringio'

def aVeryBigSum(ar)
    # Write your code here
    sum=0
    ar.each do|i|
        sum = i+sum
    end
    return sum
        

end

output_path = ENV['OUTPUT_PATH'] || '05.txt'
fptr = File.open(output_path, 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets(a, b) 

fptr.write result.join " "
fptr.write "\n"

fptr.close()