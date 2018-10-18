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
    answer = ListNode.new
    cur = answer
    carry = 0
    loop do
        n1 = l1.nil? ? 0 : l1.val
        n2 = l2.nil? ? 0 : l2.val
        tmp = n1 + n2 + carry
        carry = tmp >= 10 ? 1 : 0
        cur.val = tmp % 10
        if (l1.nil? || l1.next.nil?) && (l2.nil? || l2.next.nil?) && carry == 0
            cur.next = nil
            break
        else
            cur.next = ListNode.new
            l1 = l1.nil? ? nil : l1.next
            l2 = l2.nil? ? nil : l2.next
            cur = cur.next
        end
    end
    answer
end
