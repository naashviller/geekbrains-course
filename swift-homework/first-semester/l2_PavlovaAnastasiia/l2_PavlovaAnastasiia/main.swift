//
//  main.swift
//  l2_PavlovaAnastasiia
//
//  Created by Anastasiia Pavlova on 2/18/21.
//  Copyright © 2021 student. All rights reserved.
//

import Foundation

let a = Int(readLine(strippingNewline: true)!)!;

func even() -> String {
    if a % 2 == 0 {
        return "this number is even"
    }
    return "this isn't even number"
}

print(even())

func division() -> String {
    if a % 3 == 0 {
        return "делится на 3"
    }
    return "не делится на 3"
}
print(division())


func createArray() {
    var arrayFirst :[Int] = []
    for i in 1...100 {
        arrayFirst.append(i);
        //print(array[i]);
        
    }

    let n = arrayFirst.filter({$0 % 2 != 0 && $0 % 3 == 0})
        print(n)
    
}
createArray()


