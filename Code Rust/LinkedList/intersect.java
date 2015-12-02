// given the heads of two linked-list, return the node they intersect

public static LinkedListNode intersect(LinkedListNode head1, LinkedListNode head2){
  LinkedListNode list1node = null;
  int list1length = get_length(head1);
  LinkedListNode list2node = null;
  int list2length = get_length(head2);

  int length_difference = 0;
  if (list1length >= list2length) {
    length_difference = list1length - length2length;
    list1node = head1;
    list2node = head2;
  }else{
    length_difference = list2length - length1length;
    list1node = head2;
    list2node = head1;
  }

  while (length_difference > 0) {
    list1node = list1node.next;
    length_difference--;
  }

  while (list1node != null) {
    // this could be replaced by list1node.data == list2node.data
    if (list1node == list2node) return list1node;

    list1node = list1node.next;
    list2node = list2node.next;
  }

  return null;
}

// helper method to find the length of a linked-list
public static int get_length(LinkedListNode head){
  int l = 0;
  while(head != null) {
    head = head.next;
    l++;
  }
  return l;
}
