#!/bin/ruby

require 'json'
require 'stringio'

def simpleArraySum(ar)
    sum = 0

    ar.each do |number|
        sum += number
    end
    return sum

end

output_path = ENV['OUTPUT_PATH'] || '02.txt'
fptr = File.open(output_path, 'w')

ar_count = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = simpleArraySum(ar)

fptr.write result
fptr.write "\n"

fptr.close()
