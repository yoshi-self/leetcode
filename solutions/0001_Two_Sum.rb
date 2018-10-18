# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    h = {}
    nums.each_with_index do |n, idx|
        left = target - n
        if h.has_key?(left)
            return [h[left], idx]
        else
            h[n] = idx
        end
    end
end
