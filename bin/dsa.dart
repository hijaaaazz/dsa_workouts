 
import 'dart:math';

import 'package:dsa/binary_tree.dart';
import 'package:dsa/sorting/bubble_sorting.dart';
import 'package:dsa/sorting/insertion_sorting.dart';
import 'package:dsa/sorting/merge_sorting.dart';
import 'package:dsa/sorting/quick_sorting.dart';
import 'package:dsa/sorting/selection_sorting.dart';
void main() {
  Tree tree = Tree();

  tree.insert(10);
  tree.insert(2);
  tree.insert(5);
  tree.insert(1);
  tree.insert(7);
  tree.insert(12);
  tree.insert(55);


  tree.insert(22);
  tree.insert(11);

  tree.remove(10);
  tree.remove(11);






  tree.display();


}


