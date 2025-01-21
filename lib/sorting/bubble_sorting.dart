void bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n; i++) {
    for(int j=i+1;j<n;j++){
      if(arr[j]<arr[i]){
        int temp=arr[j];
        arr[j]=arr[i];
        arr[i]=temp;
      }
    }
   
   
  }
}


void bubbleSortOpt(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n; i++) {
    bool isSorted = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j+1]) {
 
        int temp = arr[j];
        arr[j] = arr[j+1];
        arr[j+1] = temp;
        isSorted = true;
      }
    }
   
    if (!isSorted) {
     
      break;
    }
  }
}


void bubbleSortDes(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n; i++) {
    
    for(int j=0;j<n-1;j++){
      if(arr[j]<arr[j+1]){

        int temp=arr[j+1];
        arr[j+1]=arr[j];
        arr[j]=temp;
      }
    }
   
    print("Pass ${i + 1}: $arr");
  }
}
