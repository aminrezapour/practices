// given the pointer to the head, reverse the list and return new_head

public static LinkedListNode reverse(LinkedListNode head){
  if (head == null || head.next == null) return head;

  LinkedListNode new_head = head;
  LinkedListNode list_to_do = head.next;

  new_head.next = null;

  while(list_to_do! = null){
    LinkedListNode temp = list_to_do;
    list_to_do = list_to_do.next;

    temp.next = new_head;
    new_head = temp;
  }

  return new_head;
}
