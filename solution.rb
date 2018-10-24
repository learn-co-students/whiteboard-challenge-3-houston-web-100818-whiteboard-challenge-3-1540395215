require 'pry'

# Problem 1

def move_zeros(number_array)
    new_array = number_array.select do | num |
        num != 0        
    end

    zero_array = number_array.select do | num |
        num == 0
    end

    new_array.concat(zero_array)
end

# Problem 2
def two_sum(numbers, target)
    solution_hash = {}

    numbers.find do | first_num |
        second_num = numbers.find do | test_num |
            first_num + test_num == target
        end
        if second_num == nil
            return "No solution found"
        else
            solution_hash[:index1] = numbers.index(first_num)
            solution_hash[:index2] = numbers.index(second_num)
        end
    end

    solution_hash
end

binding.pry
0