class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def addTwoNumbers(self, l1: ListNode, l2: ListNode) -> ListNode:
        new_l1 = []
        new_l2 = []
        
        while l1:
            new_l1.insert(0, l1.val)
            l1 = l1.next
        
        while l2:
            new_l2.insert(0, l2.val)
            l2 = l2.next
        
        sum_val = int(''.join(map(str, new_l1))) + int(''.join(map(str, new_l2)))
        reversed_sum_list = list(str(sum_val))[::-1]
        
        # Create nodes
        nodes = [ListNode(int(digit)) for digit in reversed_sum_list]
        
        # Link nodes
        for i in range(len(nodes) - 1):
            nodes[i].next = nodes[i + 1]
        
        return nodes[0] if nodes else None