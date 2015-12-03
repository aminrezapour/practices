// merge sort two linked-lists

public static LinkedListNode merge_sort(LinkedListNode head){

  if (head == null || head.next == null) return head;

  Pair<LinkedListNode, LinkedListNode> pair = new Pair<LinkedListNode, LinkedListNode>(null, null);

  split(head, pair);

  pair.first = merge_sort(pair.first);
  pair.second = merge_sort(pair.second);

  return merge_two(pair.first, pair.second);
}

// helper method
public static LinkedListNode merge_two(LinkedListNode head1, LinkedListNode head2){

  if (head1 == null){
    return head2;
  }else if (head2 == null){
    return head1;
  }

  LinkedListNode new_head;

  if (head1.data <= head2.data){
    new_head = head1;
    head1 = head1.next;
  }else{
    new_head = head2;
    head2 = head2.next;
  }

  LinkedListNode new_curr = new_head;

  while (head1 != null && head2 != null){
    LinkedListNode temp = null;

    if (head1.data <= head2.data){
      temp = head1;
      head1 = head1.next;
    }else{
      temp = head2;
      head2 = head2.next;
    }

    new_curr.next = temp;
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

public static void split(LinkedListNode head, Pair<LinkedListNode, LinkedListNode> pair){
  if (head == nul) return;

  if (head.next = null){
    pair.first = head;
    pair.second = null;
  }else{
    LinkedListNode slow, fast;
    slow = head;
    fast = head.next;

    while (fast != null) {
      fast = fast.next;

      if (fast != null){
        fast = fast.next;
        slow = slow.next;
      }
    }

    pair.first = head;
    pair.second = slow.next;

    slow.next = null;
  }
}

public static int length(LinkedListNode head){
  int count = 0;
  while (head != null){
    count++;
    head = head.next;
  }

  return count;
}
