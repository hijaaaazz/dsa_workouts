

import 'package:dsa/data%20structures/heap.dart';
import 'package:dsa/data%20structures/tree/binary_search_tree.dart';
import 'package:dsa/data%20structures/tree/binary_tree.dart';
void main() {
  Heap heap =Heap();

heap.insert(2);
heap.insert(8);
heap.insert(4);
heap.insert(74);
heap.insert(95);
heap.insert(1);

  print(heap.remove());
  print(heap.remove());
  print(heap.remove());
  print(heap.remove());
}


