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
    ln_result = ListNode.new(nil)
    ln = ln_result
    next_is_present = true
    while next_is_present
        next_is_present = l1&.next || l2&.next
        ln_val = l1&.val.to_i + l2&.val.to_i + ln&.val.to_i
        int = ln_val/10

        ln.val = int > 0 ? ln_val - 10 : ln_val
        ln.next = ListNode.new(int) if next_is_present || int > 0

        l1 = l1.next if l1
        l2 = l2.next if l2
        ln = ln.next
    end
    ln_result
end
