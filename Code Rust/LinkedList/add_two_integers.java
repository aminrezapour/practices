// given heads of two integers as a linked-list, return the head of the sum

public static LinkedListNode add_integers(LinkedListNode head1, LinkedListNode head2){
  LinkedListNode head = null;
  LinkedListNode current = null;
  int carry = 0;

  while (head1 != null || head2 != null || carry > 0){
    int a = (head1 == null) ? 0 : head1.data;
    int b = (head2 == null) ? 0 : head2.data;
    int k = (a + b + carry) % 10;
    carry = (a + b + carry) / 10;

    LinkedListNode temp = new LinkedListNode(k, null);

    if (head == null){
      current = temp;
      head = current;
    }else{
      current.next = temp;
      current = current.next;
    }

    if (head1 != null) head1 = head1.next;
    if (head2 != null) head2 = head2.next;
  }

  return head;
}
