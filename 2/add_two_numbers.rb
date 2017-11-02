# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    ll_common = ListNode.new(nil)
    ll = ll_common
    next_is_present = true
    while next_is_present
        next_is_present = l1&.next || l2&.next
        ll_val = l1&.val.to_i + l2&.val.to_i + ll&.val.to_i
        int = ll_val/10

        ll.val = int > 0 ? ll_val - 10 : ll_val
        ll.next = ListNode.new(int) if next_is_present || int > 0

        l1 = l1.next if l1
        l2 = l2.next if l2
        ll = ll.next
    end
    ll_common
end
