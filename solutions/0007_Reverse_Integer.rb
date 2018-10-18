# @param {Integer} x
# @return {Integer}
def reverse(x)
    s = x.to_s
    if s[0] == '-'
        s = s[0] + s[1..-1].reverse
    else
        s = s.reverse
    end
    answer = s.to_i
    if answer < -2**31 || answer > 2**31 - 1
        0
    else
        answer
    end
end
