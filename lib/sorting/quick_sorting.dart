
List quickSort(List arr) {
  if(arr.length <= 1){
    return arr;
  }

  num pi = arr[0];
  List right=[];
  List left=[];

  for(int i=1;i<arr.length;i++){

    if(arr[i]>pi){
      right.add(arr[i]);
    }
    else{
      left.add(arr[i]);
    }
  }
  return [...quickSort(left),pi,...quickSort(right)];
}


nthSmallest(List arr,int index){

  quickSort(arr){
    if(arr.length <= 1){
    return arr;
  }

  final pivot=arr[0];
  List left = [];
  List right =[];

  for(int i =1; i<arr.length; i++){
    if( arr[i]>pivot){
      right.add(arr[i]);
    }else{
      left.add(arr[i]);
    }
  }
  return [...quickSort(left),pivot,...quickSort(right)];
  }

  List res =quickSort(arr);
 
  return res[index-1];
}



List quickSortDescending(List arr) {
  if(arr.length <=1 )return arr;

  final pivot = arr[0];
  List right =[];
  List left = [];

  for(int i =1 ; i <arr.length ; i++){
    if(arr[i] > pivot){
      right.add(arr[i]);
    }else{
      left.add(arr[i]);
    }

  }

  return [...quickSortDescending(right),pivot,...quickSortDescending(left)];
}


 