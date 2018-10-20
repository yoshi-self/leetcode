# @param {Integer} num
# @return {String}

$romans = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
$nums = [1000, 500, 100, 50, 10, 5, 1]

def int_to_roman(num)
    roman = ''

    $romans.length.times { |i|
        roman += $romans[i].to_s * (num / $nums[i])
        num %= $nums[i]
    }
    correct_roman(roman)
end

# I can be placed before V (5) and X (10) to make 4 and 9.
# X can be placed before L (50) and C (100) to make 40 and 90.
# C can be placed before D (500) and M (1000) to make 400 and 900.
def correct_roman(s)
    s.gsub!('DCCCC', 'CM') # 900
    s.gsub!('CCCC', 'CD') # 400
    s.gsub!('LXXXX', 'XC') # 90
    s.gsub!('XXXX', 'XL') # 40
    s.gsub!('VIIII', 'IX') # 9
    s.gsub!('IIII', 'IV') # 4
    s
end
