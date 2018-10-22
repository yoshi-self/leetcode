# @param {String} s
# @return {Integer}

$romans = {}
$romans['I'] = 1
$romans['V'] = 5
$romans['X'] = 10
$romans['L'] = 50
$romans['C'] = 100
$romans['D'] = 500
$romans['M'] = 1000

def roman_to_int(s)
    answer = 0
    
    i = 0
    while i < s.length
        c = s[i]

        if i >= s.length - 1
            answer += $romans[s[i]]
        elsif $romans[c] < $romans[s[i + 1]]
            answer += $romans[s[i + 1]] - $romans[c]
            i += 1
        else
            answer += $romans[c]
        end
        
        i += 1
    end
    answer
end
