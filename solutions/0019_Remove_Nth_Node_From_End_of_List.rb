# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    first = ListNode.new(0)
    first.next = head
    l = first
    r = first
    n.times do
        r = r.next
    end
    
    while true
        if r.next == nil
            l.next = l.next.next
            break
        end
        
        l = l.next
        r = r.next
    end
    
    first.next
end
