# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val=0)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    n1 = list_to_i(l1)
    n2 = list_to_i(l2)
    i_to_list(n1 + n2)
end

def list_to_i(l)
    num = 0
    factor = 1
    while l != nil
        tmp = factor * l.val
        num += tmp
        factor *= 10
        l = l.next
    end
    num
end

def i_to_list(n)
    first = ListNode.new
    l = first
    loop do
        l.val = n % 10
        n /= 10
        if n == 0
            break
        end
        l.next = ListNode.new
        l = l.next
    end
    first
end
