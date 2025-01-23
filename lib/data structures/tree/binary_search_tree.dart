import 'dart:collection';

class Node{
  int data;
  Node? right;
  Node? left;

  
  

  Node(this.data);
}

class Tree{

  Node? root;
  

  insert(x){
    Node? node =root;
    if(node== null){
      root = Node(x);
      return;
    }
    while(true){
    if(x > node!.data){
      if(node.right == null){
        node.right =Node(x);
        break;
      }else{
        node = node.right;
      }
    }else{
      if(node.left == null){
        node.left = Node(x);
        
        break;
      }else{
        node=node.left;
      }
    }}
  }


  remove(x){
      _remove(x,root);
  }
  _remove(int x,Node? node){
    if(node == null){
      return null;
    }
    if( x > node.data){
      node.right = _remove(x, node.right);
    }else if(x < node.data){
      node.left = _remove(x, node.left);
    }else{
      if(node.left == null && node.right == null){
        return null;
      }
      if(node.left == null){
        return node.right;
      }
      if(node.right == null){
        return node.left;
      }

      int temp = _minVal(node.right);
      node.data = temp;
      node.right  = _remove(temp, node.right);
    }
    return node;
  }

  _minVal(Node? node){
    while(node!.left != null){
      node = node.left;
    }
    return node.data;
  }

   display(){
    if(root == null) return;

    Queue q =Queue();
    q.add(root);

    while(q.isNotEmpty){
      Node current = q.removeFirst();
      print(current.data);
      if(current.left != null){
        q.add(current.left);
      }
       if(current.right != null){
        q.add(current.right);
      }
    }
  }

}


bool isBinarysearchTree(Node? node){
return _isBSTRec(node, null, null);
  }

  bool _isBSTRec(Node? node, int? min, int? max) {
   
    if (node == null) {
      return true;
    }

    // The current node's value must be between the min and max range
    if ((min != null && node.data <= min) || (max != null && node.data >= max)) {
      return false;
    }

    return _isBSTRec(node.left, min, node.data) && _isBSTRec(node.right, node.data, max);
  }

 