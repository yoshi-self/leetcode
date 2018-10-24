# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
    h = {}
    for n in nums
        h[n] ||= 0
        h[n] += 1
    end
    
    answer = nums[0] + nums[1] + nums[2]

    nums.sort!
    p nums
    i = 0
    while i < nums.length - 2
        l = i + 1
        r = nums.length - 1
        while l < r
            sum = nums[i] + nums[l] + nums[r]
            answer = (target - sum).abs < (target - answer).abs ? sum : answer

            if sum > target
                r -= 1
            elsif sum < target
                l += 1
            else # sum == target
                break
            end
        end
        i += 1
    end
    answer
end
