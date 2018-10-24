require 'pry'
def two_sum(numbers, target)
    numbers.each_with_index do |number, index| 
        numbers.each_with_index do | number_2, index_2 |
            # puts "number: #{number}, number 2: #{number_2}"
            if (number + number_2) == target && index < index_2
                return {
                    index1: index,
                    index2: index_2
                }
            end
        end
    end
end

numbers = [2, 7, 11, 15]
target=26

puts two_sum(numbers, target)