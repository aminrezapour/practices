// as the name suggest

public static LinkedListNode insertion_sort(LinkedListNode head){
  LinkedListNode sorted = null;
  LinkedListNode current = head;

  while (current != null){
    LinkedListNode temp = current.next;
    sorted = insert(sorted, current);
    current = temp;
  }

}

// helper method: insert a node into an already sorted linked-list
public static LinkedListNode insert(LinkedListNode head, LinkedListNode node){
  if (node == null) return head;
  if (head == null || node.data < head.data){
    node.next = head;
    return node;
  }

  LinkedListNode current = head;

  while (current != null && current.data < node.data){
    current = current.next;
  }

  if (current == null) {
    current.next = node;
  }else{
    node.next = current.next;
    current.next = node;
  }

  return head;
}
