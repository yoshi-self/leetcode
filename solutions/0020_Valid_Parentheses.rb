# @param {String} s
# @return {Boolean}
def is_valid(s)
    open = ['(', '{', '[']
    close = [')', '}', ']']
    stack = []
    s.each_char do |c|
        if open.include?(c)
            stack.push c
        else
            l = stack.pop
            if !parentheses_match?(l, c)
                return false
            end
        end
    end
    
    if stack.length == 0
        true
    else
        false
    end
end

def parentheses_match?(l, r)
    if l == '(' && r == ')'
        true
    elsif l == '[' && r == ']'
        true
    elsif l == '{' && r == '}'
        true
    else
        false
    end
end
