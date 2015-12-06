// removes the duplicates

public static LinkedListNode remove_duplicates(LinkedListNode head){
  if (head == null) return head;

  LinkedListNode current = head.next;

  Set<Integer> dup_set = new HashSet<Integer>();
  dup_set.add(current.data);

  while (current.next != null) {
    if (dup_set.contains(current.next.data)){
      current.next = current.next.next;
    }else{
      dup_set.add(current.next.data)
      current = current.next;
    }
  }

  return head;
}
