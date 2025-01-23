
class HashTable {
  int size;
  late List<LinkedList> table;

  HashTable(this.size) {
    table = List.generate(size, (_) => LinkedList());
  }

  int _hash(String key) {
    return key.hashCode % size;
  }

  void set(String key, String value) {
    int index = _hash(key);
    LinkedList bucket = table[index];

    Node? existingNode = bucket.find(key);
    if (existingNode != null) {
      existingNode.value = value;  
    } else {
      bucket.add(Node(key, value)); 
    }
  }

  String? get(String key) {
    int index = _hash(key);
    LinkedList bucket = table[index];

    Node? node = bucket.find(key);
    return node?.value;
  }

  void remove(String key) {
    int index = _hash(key);
    LinkedList bucket = table[index];
    bucket.remove(key);
  }

  void display() {
    for (int i = 0; i < table.length; i++) {
      print("Index $i: ${table[i]}");
    }
  }
}

class Node {
  String key;
  String value;
  Node? next;

  Node(this.key, this.value, [this.next]);
}


class LinkedList {
  Node? head;

  void add(Node node) {
    if (head == null) {
      head = node;
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = node;
    }
  }

  Node? find(String key) {
    Node? current = head;
    while (current != null) {
      if (current.key == key) {
        return current;
      }
      current = current.next;
    }
    return null;
  }

  void remove(String key) {
    if (head == null) return;

    if (head!.key == key) {
      head = head!.next;
      return;
    }

    Node? current = head;
    while (current!.next != null) {
      if (current.next!.key == key) {
        current.next = current.next!.next;
        return;
      }
      current = current.next!;
    }
  }

  @override
  String toString() {
    List<String> result = [];
    Node? current = head;
    while (current != null) {
      result.add('${current.key}: ${current.value}');
      current = current.next;
    }
    return result.isEmpty ? 'Empty' : result.join(' -> ');
  }
}