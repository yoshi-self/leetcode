# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    if nums.length < 3
        return []
    end
    
    h = {}
    answer = []
    for n in nums
        h[n] ||= 0
        h[n] += 1
    end

    nums = h.keys.sort
    
    i = 0
    while i < nums.length
        j = i
        while j < nums.length
            need = -1 * (nums[i] + nums[j])
            if h[need] == nil || need < nums[j]
                j += 1
                next
            end
            
            make_zero = false
            if need == 0 # [0, 0, 0]
                if h[0] >= 3
                    make_zero = true
                end             
            elsif nums[i] == nums[j]
                if h[nums[i]] >= 2
                    make_zero = true
                end
            elsif nums[j] == need
                if h[nums[j]] >= 2
                    make_zero = true
                end
            else
                make_zero = true
            end
                
            if make_zero
                answer.push [nums[i], nums[j], need]
            end
                
            j += 1
        end
        i += 1
    end
        
    answer
end
