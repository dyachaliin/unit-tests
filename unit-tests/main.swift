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
