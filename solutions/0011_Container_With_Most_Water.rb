# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    l = 0
    r = height.length - 1
    max_area = 0
    min_height = [height[l], height[r]].min
    while l < r
        area = (r - l) * [height[l], height[r]].min
        max_area = [max_area, area].max
        if height[l] < height[r]
            l += 1
        else
            r -= 1
        end
    end
    max_area
end
