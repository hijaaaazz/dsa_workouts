import 'dart:math';

class Heap{
  
  List heap = [];

  parent(x) =>  ((x-1)/2).floor();
  leftChild(x) => (x*2)+1;
  rightChild(x) =>  (x*2)+2;
  

  insert(x){
    heap.add(x);
    shiftUp(heap.length-1);
  }
  remove(){
    if(heap.length == 1){
      return heap.removeLast();
    }

    int min = heap[0];
    heap[0] = heap.removeLast();
    shiftDown(0);
    return min;
  }

  
 
  shiftUp(int currentIdx){
    int parentIdx = parent(currentIdx);
    while(currentIdx > 0 && heap[currentIdx] < heap[parentIdx]){
      int temp = heap[currentIdx];
      heap[currentIdx] = heap[parentIdx];
      heap[parentIdx] = temp;

      currentIdx = parentIdx;
      parentIdx = parent(currentIdx);
    }
  }

  shiftDown(int currentIdx){
    int endIdx = heap.length-1;
    int leftIdx = leftChild(currentIdx);
    while( leftIdx < endIdx){
      int rightIdx = rightChild(currentIdx);
      int idxShift = rightIdx <= endIdx &&  heap[rightIdx]<heap[leftIdx] ? rightIdx: leftIdx;
      if(heap[currentIdx]>heap[idxShift]){
        int temp = heap[currentIdx];
        heap[currentIdx] = heap[idxShift];
        heap[idxShift]=temp;

        currentIdx= idxShift;
        leftIdx = leftChild(currentIdx);
      }else{
        return;
      }
    }

  }
  

  


}