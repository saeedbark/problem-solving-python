class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    final dummyHead = ListNode(0);
    var current = dummyHead;
    int carry = 0;

    while (l1 != null || l2 != null || carry != 0) {
      int val1 = l1?.val ?? 0;
      int val2 = l2?.val ?? 0;
      int sum = val1 + val2 + carry;

      carry = sum ~/ 10;
      current.next = ListNode(sum % 10);
      current = current.next!;

      l1 = l1?.next;
      l2 = l2?.next;
    }

    return dummyHead.next;
  }
}



void main() {
  final sol = Solution();
  final l1 = ListNode(2, ListNode(4, ListNode(3, ListNode(8))));
  final l2 = ListNode(5, ListNode(6, ListNode(4, ListNode(9))));

  final result = sol.addTwoNumbers(l1, l2);
  print("Result: ");
  print(result); // 👀 Easy to read
}
