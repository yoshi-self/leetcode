# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    if l1 == nil && l2 == nil
        return nil
    end
    
    first = ListNode.new(0)
    cur = first
    while true
        if l1 == nil
            cur.val = l2.val
            l2 = l2.next
        elsif l2 == nil
            cur.val = l1.val
            l1 = l1.next
        elsif l1.val < l2.val 
            cur.val = l1.val
            l1 = l1.next
        else
            cur.val = l2.val
            l2 = l2.next
        end
        
        if l1 == nil && l2 == nil
            break
        else
            cur.next = ListNode.new(0)
            cur = cur.next
        end
    end
    first
end
