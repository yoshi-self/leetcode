$chars = {
    '2' => 'abc',
    '3' => 'def',
    '4' => 'ghi',
    '5' => 'jkl',
    '6' => 'mno',
    '7' => 'pqrs',
    '8' => 'tuv',
    '9' => 'wxyz',
}

$answer = []

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    $answer = []
    recurse(digits, '')
    $answer
end

# @param {String} digits
def recurse(digits, str)
    if digits.length == 0
        if str.length > 0
            $answer.push str
        end
        return
    end
    chars = $chars[digits[0]]
    chars.each_char do |c|
        new_str = str + c
        new_digits = digits[1..-1]
        recurse(new_digits, new_str)
    end
end
