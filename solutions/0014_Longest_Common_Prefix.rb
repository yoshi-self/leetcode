# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    prefix = ''
    i = 0

    if strs.length == 0
        return ''
    end
    
    loop do
        common_char = nil
        is_finished = false
        
        for str in strs
            if i >= str.length
                is_finished = true
                break
            end
            
            if common_char == nil
                common_char = str[i]
            elsif common_char != str[i]
                is_finished = true
                break
            end
        end
        
        if is_finished
            break
        end
                
        prefix += common_char
        
        i += 1
    end
    prefix
end
