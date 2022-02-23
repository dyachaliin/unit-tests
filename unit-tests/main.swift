//
//  main.swift
//  unit-tests
//
//  Created by Алина Дьяченко on 23.02.2022.
//

import Foundation


class LinkedListNode {
    var value: Character
    var next: LinkedListNode?
    init(value: Character, next: LinkedListNode? = nil) {
        self.value = value
        self.next = next
    }
}

class LinkedList {
    var head: LinkedListNode?
    var tail: LinkedListNode?
    
    func listLength() -> Int {
        if (self.head == nil) {
            return 0
        }
        var temp: LinkedListNode? = self.head?.next
        var length = 1
        while (!(temp === self.head)) {
            length += 1
            temp = temp?.next
        }
        return length
    }
    
    
    func append(_ value: Character) {
        let node: LinkedListNode? = LinkedListNode(value: value)
        if (self.head == nil) {
            self.head = node
        } else {
            self.tail!.next = node
        }
        node!.next = self.head
        self.tail = node
    }
    
    
    func getNode(at index: Int) -> LinkedListNode? {
        if head == nil {
            return nil
        } else if index < 0 || index >= self.listLength() {
            return nil
        }
        var currentNode = head
        var currentIndex = 0
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        return currentNode
    }
    
    
    func insert(_ element: Character, at index: Int) {
        if index < 0 || index >= self.listLength() {
            self.append(element)
            return
        }
        if let previousNode = self.getNode(at: index), let tail = tail {
            if previousNode === tail {
                self.append(element)
            } else {
                previousNode.next = LinkedListNode(value: element, next: previousNode.next)
            }
        } else {
            self.append(element)
        }
    }
    
}

//let list = LinkedList()
//list.append("A")
//list.append("B")
//list.append("C")
//list.append("D")
//print(list.getNode(at: 10)?.value)
//list.insert("E", at: 3)
//print(list.getNode(at: 10)?.value)
