// return a copy of a linked-list with two pointers
// LinkedListNode2 is a linked-list class with two arbitrary poninters

public static LinkedListNode2 deep_copy(LinkedListNode2 head){

  if (head == null) return null;

  LinkedListNode2 new_head = null;
  LinkedListNode2 new_pointer = null;
  LinkedListNode2 head_pointer = head;

  Hashtable<LinkedListNode2, LinkedListNode2> myHash = new Hashtable<LinkedListNode2, LinkedListNode2>();

  while (head_pointer != null){
    LinkedListNode2 temp = new LinkedListNode2(head_pointer.data, head_pointer.next1, head_pointer.next2);

    if (new_head == null){
      new_head = temp;
    }else{
      new_pointer.next1 = temp;
    }

    myHash.put(head_pointer, temp);

    new_pointer = temp;
    head_pointer = head_pointer.next1;
  }

  new_pointer = new_head;

  while (new_pointer != null){
    if (new_pointer.next2 != null){
      LinkedListNode2 temp = myHash.get(new_pointer.next2);
      new_pointer.next2 = temp;
    }
  }

  return new_head;
}
