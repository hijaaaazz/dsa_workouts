
List selectionSorting(List arr){
  int size=arr.length;
  int minIndex=0;
  for(int i=0;i<size-1;i++){
    minIndex=i;
    for(int j=i;j<size;j++){
      if(arr[minIndex]>arr[j]){
        minIndex=j;
      }
    }
    int temp=arr[minIndex];
    arr[minIndex]=arr[i];
    arr[i]=temp;

    
  }
  return arr;
}



List descendingSelectionSorting(List arr){
  int n=arr.length;

  for(int i=0;i<n; i++){
    int maxIndex=i;
    for(int j=i;j<n;j++){
      if(arr[maxIndex]<arr[j]){
        maxIndex = j;
      }
    }
    int temp= arr[maxIndex];
    arr[maxIndex]=arr[i];
    arr[i]=temp;
  }

  return arr;
}


nthSmallestElement(int n, List arr){
  int size=arr.length;

  for(int i=0; i<size; i++){
    int minElement=i;
    for(int j=i; j<size; j++){
      if(arr[minElement]> arr[j]){
        minElement=j;
      }
    }
    int temp=arr[minElement];
  arr[minElement]=arr[i];
  arr[i]=temp;
  }
  return arr[n-1];
}