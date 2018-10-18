# @param {String} str
# @return {Integer}
def my_atoi(str)
    sign = 1
    num = 0
    started = false
    str.each_char do |c|
        if started
            if is_digit(c)
                num *= 10
                num += c.ord - '0'.ord
            else
                break
            end
        else # not started
            if c == '+'
                started = true
            elsif c == '-'
                sign = -1
                started = true
            elsif is_digit(c)
                num = c.ord - '0'.ord
                started = true
            elsif c == ' '
                next
            else
                return 0
            end
        end
        
        # Check integer range
        if sign * num < -(2**31)
            return -(2**31)
        elsif sign * num > 2**31 - 1
            return 2**31 -1
        end
    end
    sign * num
end

def is_digit(c)
    c =~ /^[0-9]$/
end
