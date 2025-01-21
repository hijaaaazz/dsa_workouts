class Node{
    constructor(value){
        this.value = value
        this.right = null
        this.left = null
    }
}

class Binarytree{
    constructor(){
        this.root = null
    }
    isEmpty(){
        return this.root === null
    }
    insertValue(value){
        const node = new Node(value)

        if(this.isEmpty()){
            this.root = node
        }

        let queue = []
        queue.push(this.root)

        while(queue.length > 0){
            let crr = queue.shift()

            if(crr.left===null){
                crr.left = node
                break;
            }else{
                queue.push(crr.left)
            }

            if(crr.right===null){
                crr.right = node
                break;
            }else{
                queue.push(crr.right)
            }
        }
    }
}