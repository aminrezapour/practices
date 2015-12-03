// merge sort two linked-lists

public static LinkedListNode merge_sort(LinkedListNode head){

  if (head == null || head.next == null) return head;

  LinkedListNode[] new_head = split(head);

  return merge_two(merge_sort(new_head[0]), merge_sort(new_head[1]));

}

// helper method
public static LinkedListNode merge_two(LinkedListNode head1, LinkedListNode head2){
  LinkedListNode new_head = null;
  LinkedListNode new_curr = null;

  while (head1 != null && head2 != null){
    LinkedListNode temp = null;

    if (head1.data < head2.data){
      temp = new LinkedListNode(head1.data, null);
      head1 = head1.next;
    }else{
      temp = new LinkedListNode(head2.data, null);
      head2 = head2.next;
    }

    if (new_head == null){
      new_head = temp;
      new_curr = temp;
    }else{
      new_curr.next = temp;
    }
    new_curr = temp;

  }

  if (head1 == null){
    new_curr.next = head2;
  }
  if (head2 == null){
    new_curr.next = head1;
  }

  return new_head;
}

public static LinkedListNode[] split(LinkedListNode head){
  LinkedListNode[] result = new LinkedListNode[2];

  int n = length(head);

  LinkedListNode current = null;

  for (int i = 0; i < (n/2); i++){
    LinkedListNode temp = new LinkedListNode(head.data, null);
    if (result[0] == null){
      result[0] = temp;
    }else{
      current.next = temp;
    }

    current = temp;
    head = head.next;
  }

  current = null;
  for (int i = (count/2); i < count; i++){
    LinkedListNode temp = new LinkedListNode(head.data, null);
    if (result[1] == null){
      result[1] = temp;
    }else{
      current.next = temp;
    }

    current = temp;
    head = head.next;
  }

  return result;
}

public static int length(LinkedListNode head){
  int count = 0;
  while (head != null){
    count++;
    head = head.next;
  }

  return count;
}
