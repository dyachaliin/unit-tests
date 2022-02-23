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
    init(value: Character) {
        self.value = value
        self.next = nil
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
    
    
    func addNode(_ value: Character) {
        let node: LinkedListNode? = LinkedListNode(value: value)
        if (self.head == nil) {
            self.head = node
        } else {
            self.tail!.next = node
        }
        node!.next = self.head
        self.tail = node
    }
    
}


