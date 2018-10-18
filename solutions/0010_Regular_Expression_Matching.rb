# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
    return is_match_recursive(s, p)
end

def is_match_recursive(s, p)
    # Check if this should end
    # Note: When s is empty, p can still have *s
    if p.length == 0
        return s.length == 0
    end
    
    is_first_char_match = s.length > 0 && (p[0] == '.' || s[0] == p[0])
    
    if p.length >= 2 && p[1] == '*'
        # Drop *
        m1 = is_match_recursive(s, safe_slice(p, 2))
        if m1
            return true
        end
        # Remain *
        m2 = is_first_char_match ? is_match_recursive(safe_slice(s, 1), p) : false
        return m2
    else
        if is_first_char_match
            return is_match_recursive(safe_slice(s, 1), safe_slice(p, 1))
        else
            return false
        end
    end
end

# Return [] istead of nil when try to slice out of bounds
def safe_slice(s, start)
    if start >= s.length
        []
    else
        s[start..-1]
    end
end
