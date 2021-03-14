//
//  main.swift
//  l6_PavlovaAnastasiia
//
//  Created by Anastasiia Pavlova on 3/9/21.
//  Copyright © 2021 student. All rights reserved.
//

import Foundation

class Square {
    var a: Int
    var b: Int
    
    init(a:Int, b:Int) {
        self.a = a
        self.b = b
    }
}

extension Square: CustomStringConvertible {
    var description : String {
        return "A: \(a), B: \(b)"
    }
}

struct Queue<T> {
    private var elements: [T] = []
    
    mutating func enqueue (_ element: T) {
        elements.append(element)
    }
    
    mutating func dequeue (_ element: T) -> T? {
        return elements.removeFirst()
    }
    
    var isEmpty: Bool {
        return elements.count == 0
    }
    
    func filter (a: Int,b: Int) -> Int {
        var result: Int
        result = a * b
        if result > 20 {
            return result
        } else {
            return -1
        }
    }
    
     subscript(indices: UInt ...) -> String? {
        //var new = 0
        for index in indices where index > self.elements.count {
            print("не мяy")
            return nil
            
        }
        return "мяу"
    }
    
    func printQueue() {
        for i in 0..<elements.count{
            print(elements[i])
        }
        //print(elements[$0])
        print(elements.count)

    }
}

var square1 = Queue<Square>()
square1.enqueue(.init(a: 34, b: 2))
square1.printQueue()
square1.enqueue(.init(a: 2, b: 4))
square1.enqueue(.init(a: 1, b: 13))
square1.printQueue()
square1.dequeue(.init(a: 2, b: 4))
square1.printQueue()
square1.isEmpty
print(square1.filter(a: 11, b: 2))








