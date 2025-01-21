class Stack{
  List stack=[];
  int last=-1;
  int? size;

  Stack(this.size){
    stack = List.filled(size ?? 10, null);
  }
  

  void push(x){
    last++;
   stack[last] = x;
  }

   pop(){

    int res = stack[last];
    stack[last] = null;
    last--;
    
    return res;
  }

  display(){
    print(stack);
  }

  peek(){
    return stack.last;
  }
}