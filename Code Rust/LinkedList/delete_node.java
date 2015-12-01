// given a head and a data k, delete the node with this value

public static LinkedListNode delete_node(LinkedListNode head, int k){
  if (head == null || head.data == k) return null;

  LinkedListNode previous = head;
  LinkedListNode current = head.next;

  while (current != null){
    if (current.data == k) break;
    previous = current;
    current = current.next;
  }

  if (current == null) return head;

  previous.next = current.next;

  return head;
}
