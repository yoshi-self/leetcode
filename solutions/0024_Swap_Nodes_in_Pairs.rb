# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
    if head == nil || head.next == nil
        return head
    end
    
    a = head
    b = head.next
    orig_second = b
    
    loop do
        tmp = a.val
        a.val = b.val
        b.val = tmp
        if b.next == nil || b.next.next == nil
            break
        end
        a = a.next.next
        b = b.next.next
    end
    head
end
