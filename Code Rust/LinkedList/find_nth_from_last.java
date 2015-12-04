// find the nth from the last

public static LinkedListNode find_nth_from_last(LinkedListNode head, int n){

  if (head == null || n < 1) return null;

  LinkedListNode current = head;

  while (current != null && n > 0){
    current = current.next;
    n--;
  }

  if (current == null) return null;

  while (current != null){
    current = current.next;
    head = head.next;
  }

  return head;
}
