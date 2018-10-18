# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    max = 0
    count = 0
    h = {}
    start = 0
    s.each_char.with_index do |c, idx|
        if !h.has_key?(c)
            h[c] = idx
            count += 1
        else
            start = [start, h[c]].max
            count = idx - start
            h[c] = idx
        end
        max = [max, count].max
    end
    max
end
