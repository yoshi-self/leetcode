# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    # Prevent zero division
    if num_rows <= 1
        return s
    end
    
    cycle = 2 * num_rows - 2
    
    arr = Array.new(num_rows) {""}
    s.each_char.with_index do |c, i|
        ci = i % cycle
        if ci < num_rows
            arr[ci % num_rows] += c
        else
            arr[num_rows - 1 - (ci + 1 - num_rows)] += c
        end
    end

    arr.join
end
