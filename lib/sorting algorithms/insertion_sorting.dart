insertionSorting(List arr){
  for(int i=1;i<arr.length;i++){
    int key=arr[i];
    int j=i-1;
    while( j >=0 && arr[j] > key ){
      arr[j+1]=arr[j];
      j--;
    }
    arr[j+1]=key;
    
  }
  return arr;
}


insertionDescendingSorting(List arr){

  for(int i=1;i<arr.length;i++){
    int j=i-1;
    int key=arr[i];

    while(j>=0 && arr[j]<key){
      arr[j+1]=arr[j];
      j--;
    }
    arr[j+1]=key;
  }
  
  return arr;
}


insertAlphabeticSorting(List<String> arr){
  for(int i=0;i<arr.length; i++){

    String key = arr[i];
    int j= i-1;
    while(j>=0 && arr[j].compareTo(key) > 0){
      arr[j+1]=arr[j];
      j--;
    }
    arr[j+1]=key;
  }
  return arr;
}