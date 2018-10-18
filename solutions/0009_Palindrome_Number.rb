# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    # Eliminate minus 
    if x < 0
        return false
    elsif x == 0
        return true
    end
    
    digits_num = Math.log10(x).to_i + 1
    reversed_half = 0
    # Make reversed half from digits of x
    (digits_num / 2).times do
        reversed_half *= 10
        reversed_half += x % 10
        x /= 10
    end

    # Ommit odd digit
    if digits_num.odd?
        x /= 10
    end
        
    if x == reversed_half
        true
    else
        false
    end
end
