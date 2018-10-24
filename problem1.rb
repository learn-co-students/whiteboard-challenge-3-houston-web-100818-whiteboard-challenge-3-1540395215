require 'pry'

def move_zeroes(nums)
    #nums = [0, 1, 0, 3, 12]
    # for every non-zero element, put the element at arr[count] and increment count

        length = nums.length
       count = 0 
    for i in 0...length
        if nums[i]!= 0
            nums[count] = nums[i]
            count += 1
        end
    end
  # Loop from count  
    while count < length
        nums[count] = 0
        count += 1
    end
    return nums
   
end
binding.pry
0