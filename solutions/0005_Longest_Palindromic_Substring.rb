# @param {String} s
# @return {String}
def longest_palindrome(s)
    # Prevent index out of bounds
    if s.length <= 1
        return s
    end
    
    max = s[0]
    (s.length-1).times do |i|
        c1 = get_palindromic(s, i, i)
        c2 = s[i] == s[i + 1] ? get_palindromic(s, i, i + 1) : s[0]
        max = [max, c1, c2].sort_by{|p| p.length}[2]
    end
    
    max
end

def get_palindromic(s, i, j)
    while (i >= 0) && (j <= s.length - 1) && (s[i] == s[j])
        i -= 1
        j += 1
    end
    return s[(i+1)..(j-1)]
end
