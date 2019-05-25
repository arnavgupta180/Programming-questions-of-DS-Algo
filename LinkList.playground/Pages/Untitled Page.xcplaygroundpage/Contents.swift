// Algorithm to find the nth node from end of the linked list
// Algorithm to find the middle element of a linked list

import UIKit

// What is a linked list?
//  1->2->3->nil

// Define data structure that suports the list
class Node<T> {
    let value: T
    var next: Node?
    init(value: T, next: Node?) {
        self.value = value
        self.next = next
    }
}

// creates a linked list class
class LinkedList<T> {
    fileprivate var head: Node<T>?
    // check if linked list is empty
    func isEmpty() -> Bool {
        return head == nil
    }
    // appending node in a linked list
    func push(_ value: T) {
        if head == nil {
            // appending first element in a linked list
            let newNode = Node(value: value, next: nil)
            head = newNode
        } else {
            // finding last element and adding node to its next(pointer) in a linked list
            var last = head
            while last?.next != nil {
                last = last?.next
            }
            let newNode = Node(value: value, next: nil)
            last?.next = newNode
            // Adding next(pointer) to the head if it is nill
            if head?.next == nil {
                head = last
            }
        }
    }
    
    //traversing linked list
    func traverseList() {
        var temp = head
        while let next = temp {
            print(next.value)
            temp = temp?.next
        }
    }
}

                    /*******************************/

//Algorithm to find the nth node from end of the linked list
/* Procedure:
    Find the length of the linked list.
    Iterate the linkedlist to length -nth element.
 */
extension LinkedList{
    // find nth element of a linked list
    func findNodeFromLast(n: Int) -> T? {
        // checking n as positive number
        if n < 1 {
            print("n must be greater than zero")
            return nil }
        var length = 0
        var temp = head
        // finding length of a linked list
        while temp != nil {
            length = length + 1
            temp = temp?.next
        }
        if n > length {
            print("n is greater than length of linked list")
            return nil
        } else {
            // finding nth element of a linkedlist
            temp = head
            for (index, _) in (0...(length - n)).enumerated() {
                if index != length - n {
                    temp = temp?.next
                }
            }
            return temp?.value
        }
    }
}

                    /*******************************/


//Algorithm to find the middle element of a linked list
/* Procedure:
    Take two pointers.
    Make first pointer to move two values
    Make second pointer to move one value
    When first pointer reaches last then second
    pointer will be at middle.
 */
extension LinkedList{
    // find middle element of a linked list
    func findmiddleElement() -> T? {
        var firstPointer = head
        var secondPointer = head
        // finding length of a linked list
        while firstPointer?.next != nil {
            firstPointer = firstPointer?.next
            firstPointer = firstPointer?.next
            secondPointer = secondPointer?.next
        }
            return secondPointer?.value
    }
}


var lList = LinkedList<Any>()
lList.push(20)
lList.push(30)
lList.push(50)
lList.push(70)
lList.push(90)

if let nthElement = lList.findNodeFromLast(n: 4) {
    print("Algorithm to find the nth node from end of the linked list with n = 4 is ", nthElement)
}

if !lList.isEmpty(), let middleElement = lList.findmiddleElement(){
        print("middle element of a linked list is ", middleElement)
}

