require 'json'
require 'stringio'
def birthdayCakeCandles(candles)
  max_height = candles.max
  count = candles.count(max_height)
  return count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

candles_count = gets.strip.to_i

candles = gets.rstrip.split.map(&:to_i)

result = birthdayCakeCandles(candles)

fptr.write result
fptr.write "\n"

fptr.close()