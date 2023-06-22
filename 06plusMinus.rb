def plusMinus(arr)
    # Write your code here
    puts(arr)
    positive = 0
    negative = 0
    zero = 0
    arr.each do |number|
        if arr[number] > 0
            positive = positive + 1
        elsif arr[number] < 0
            negative = negative + 1
        elsif arr[number] == 0
            zero = zero + 1    
    end
    puts(positive/arr.length)
    puts(negative/arr.length)
    puts(zero/arr.length)

end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus(arr)
