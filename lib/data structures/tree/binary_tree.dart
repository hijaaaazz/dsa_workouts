import 'dart:collection';

import 'package:dsa/data%20structures/tree/binary_search_tree.dart'; // Needed for Queue



class BinaryTree {
  Node? root;

  void insert(int value) {
    Node node =Node(value);
    if(root == null){
      root = node;
      return;
    }

    Queue q =Queue();
    q.add(root);

    while(q.isNotEmpty){
      Node current = q.removeFirst();
      if(current.left == null){
        current.left = node;
        break;
      }else{
        q.add(current.left);
      }

      if(current.right == null){
        current.right = node;
        break;
      }else{
        q.add(current.right);
      }
    }
  }

  void inorderTraversal(Node? node) {
    if (node != null) {
      inorderTraversal(node.left);
      print(node.data);
      inorderTraversal(node.right);
    }
  }

  void preorderTraversal(Node? node) {
    if (node != null) {
      print(node.data);
      preorderTraversal(node.left);
      preorderTraversal(node.right);
    }
  }

    void postorderTraversal(Node? node) {
    if (node != null) {
      postorderTraversal(node.left);
      postorderTraversal(node.right);
      print(node.data);
    }
  }
}
