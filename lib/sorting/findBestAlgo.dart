

import 'package:dsa/sorting/bubble_sorting.dart';
import 'package:dsa/sorting/insertion_sorting.dart';
import 'package:dsa/sorting/merge_sorting.dart';
import 'package:dsa/sorting/quick_sorting.dart';
import 'package:dsa/sorting/selection_sorting.dart';

void findbetterAlgorithm(List<int> arr) {
  
  Stopwatch stopwatch =Stopwatch();

  final originalArray = List<int>.from(arr);

  stopwatch.start();
  bubbleSort(List<int>.from(originalArray));
  stopwatch.stop();
  int bubbleTime = stopwatch.elapsedMicroseconds;
  stopwatch.reset();

  stopwatch.start();
  selectionSorting(List<int>.from(originalArray));
  stopwatch.stop();
  int selectionTime = stopwatch.elapsedMicroseconds;
  stopwatch.reset();

  stopwatch.start();
  insertionSorting(List<int>.from(originalArray));
  stopwatch.stop();
  int insertionTime = stopwatch.elapsedMicroseconds;
  stopwatch.reset();


  stopwatch.start();
  quickSort(List<int>.from(originalArray));
  stopwatch.stop();
  int quickTime = stopwatch.elapsedMicroseconds;
  stopwatch.reset();


  stopwatch.start();
  mergesort(List<int>.from(originalArray));
  stopwatch.stop();
  int mergeTime = stopwatch.elapsedMicroseconds;
  stopwatch.reset();

  
  

  Map<String, int> timeComplexity = {
    "Bubble Sort": bubbleTime,
    "Selection Sort": selectionTime,
    "Insertion Sort": insertionTime,
    "Quick Sort": quickTime,
    "Merge Sort": mergeTime
  };

  var sortedMap = Map.fromEntries(
    timeComplexity.entries.toList()
      ..sort((e1, e2) => e1.value.compareTo(e2.value)),
  );

  sortedMap.forEach((key, value) => print("$key - ${(value/100).floor()}"),);
}
