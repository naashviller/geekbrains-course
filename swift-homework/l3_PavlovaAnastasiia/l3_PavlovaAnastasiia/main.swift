//
//  main.swift
//  l3_PavlovaAnastasiia
//
//  Created by Anastasiia Pavlova on 2/25/21.
//  Copyright © 2021 student. All rights reserved.
//

import Foundation
enum engine {
    case start, stop
}

enum windowState {
    case open, close
}

enum trunkState {
    case full, empty
}

struct sportCar {
    let year: Int
    var mark: String
    var fullVolumeTrunk: Double
    
    var engine: engine {
        willSet {
            if newValue == .start {
                print ("\(mark) engine is working")
            } else {
                print ("\(mark) engine is NOT working")
            }
        }
    }
    
    var windowState: windowState {
        willSet {
            if newValue == .open {
                print ("\(mark) windows are open")
            } else {
                print ("\(mark) windows are closed")
            }
        }
    }
    
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(mark) trunk is empty")
    }
    
}

struct trunkCar {
    let year: Int
    var mark: String
    var fullVolumeTrunk: Double

    var engine: engine {
        willSet {
            if newValue == .start {
                print ("\(mark) engine is working")
            } else {
                print ("\(mark) engine is NOT working")
            }
        }
    }
    
    var windowState: windowState {
        willSet {
            if newValue == .open {
                print ("\(mark) windows are open")
            } else {
                print ("\(mark) windows are closed")
            }
        }
    }
    
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(mark) trunk is empty")
    }

}

var car1 = sportCar(year: 2021, mark: "Hundai", fullVolumeTrunk: 350.2, engine: .stop, windowState: .open, trunkState: .empty)

var car2 = trunkCar(year: 2003, mark: "Volvo", fullVolumeTrunk: 2599.0, engine: .stop, windowState: .close,  trunkState: .empty)



car1.engine = .start
car2.engine = .start

car1.windowState = .close
car2.windowState = .open

car1.emptyTrunck()
car2.emptyTrunck()


print ("The sport car: mark: \(car1.mark), year: \(car1.year), trunkState: \(car1.trunkState), engine is \(car1.engine)")
print ("The trunk car: mark: \(car2.mark), year: \(car2.year), trunkState: \(car2.trunkState), engine is \(car2.engine), windows are \(car2.trunkState)")



let fullNameOfCar = [
    ("Hundai", "Solaris"),
    ("Volvo", "FH")
]
enum printNameOfCar {
    case full
    case short
}
func printNameCar( _ fullNameOfCar: [(String, String)], mode: printNameOfCar){
    for i in fullNameOfCar{
        switch mode {
        case .full:
            print(i.0, i.1)
        case .short:
            print(i.0)
        }
    }
}
printNameCar(fullNameOfCar, mode: .full)


