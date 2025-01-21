List<num> mergesort(List<num> arr) {
  if (arr.length <= 1) return arr;
  
  final middle = (arr.length / 2).floor();
  final left = mergesort(arr.sublist(0, middle));
  final right = mergesort(arr.sublist(middle));
  
  return merge(left, right);
}

List<num> merge(List<num> left, List<num> right) {
  final sortedArr = <num>[];
  
  while (left.isNotEmpty && right.isNotEmpty) {
    if (left[0] < right[0]) {
      sortedArr.add(left.removeAt(0));
    } else {
      sortedArr.add(right.removeAt(0));
    }
  }
  
  return [...sortedArr, ...left, ...right];

  
}



mergeSortdescending(List arr){

  if(arr.length <= 1) return arr;


  int mid = (arr.length/2).floor();
  final left = mergeSortdescending(arr.sublist(0,mid));
  final right = mergeSortdescending(arr.sublist(mid));

  return mergeSortDes(left, right);
}

mergeSortDes(List left, List right){

  List res = [];

  while(left.isNotEmpty && right.isNotEmpty){
    if(left[0] > right[0]){
      res.add(left.removeAt(0));
    }else{
      res.add(right.removeAt(0));
    }
  }
  return [...res,...left,...right];

}






List<String> mergeSortString(List<String> arr) {
  if (arr.length <= 1) return arr;

  final mid = (arr.length / 2).floor();
  final left = mergeSortString(arr.sublist(0, mid));
  final right = mergeSortString(arr.sublist(mid));

  return mergeString(left, right);
}

List<String> mergeString(List<String> left, List<String> right) {
  final result = <String>[];

  while (left.isNotEmpty && right.isNotEmpty) {
    if (left[0].compareTo(right[0]) < 0) {  // Changed to < 0 for ascending order
      result.add(left.removeAt(0));
    } else {
      result.add(right.removeAt(0));
    }
  }

  return [...result, ...left, ...right];
}