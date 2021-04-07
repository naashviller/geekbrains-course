//
//  main.swift
//  l5_PavlovaAnastasiia
//
//  Created by Anastasiia Pavlova on 3/3/21.
//  Copyright © 2021 student. All rights reserved.
//

import Foundation

protocol Car {
    var mark: String{ get set}
    var model: String {get set}
    var year: Int {get set}
    var km: Double { get set}
    var window: Bool { get set}
    var engine: Bool { get set}
    var door: Bool { get set}
    
    
    func checkWindow() -> Bool
    func checkEngine() -> Bool
}

extension Car {
    func openWindow() -> Bool {
        window == true
    }
}
extension Car {
    func closeWindow() -> Bool {
        window == false
    }
}
extension Car {
    func engineOn() -> Bool {
        engine == true
    }
}
extension Car {
    func engineOff() -> Bool {
        engine == false
    }
}

class SportCar: Car {
    
    var mark: String
    var model: String
    var year: Int
    var km: Double
    var window: Bool
    var engine: Bool
    var door: Bool
    var flowBreaker: Bool
    
    init(year: Int, km: Double, window: Bool, engine: Bool, door:Bool, mark: String, model: String, flowBreaker: Bool) {
        self.year = year
        self.km = km
        self.window = window
        self.engine = engine
        self.door = door
        self.mark = mark
        self.model = model
        self.flowBreaker = flowBreaker
    }
    
    func checkWindow() -> Bool {
        if (openWindow().self == true) {
            print("the window is open")
        } else {
            print("the window is closed")
        }
        return openWindow().self
    }
    
    func checkEngine() -> Bool {
        if (engineOff().self == true) {
            print("engine off")
        } else {
            print("engine on")
        }
        return engineOff().self
    }
    
}
    
extension SportCar: CustomStringConvertible {
    var description: String {
        if (flowBreaker)  {
            return "car has flowbreaker"
        } else {
            return "car has NO flowbreaker"
        }
        
    }
}


class TrunkCar: Car {
    
    var mark: String
    var model: String
    var year: Int
    var km: Double
    var window: Bool
    var engine: Bool
    var door: Bool
    var trailer: Bool
    
    init(year: Int, km: Double, window: Bool, engine: Bool, door:Bool, mark: String, model: String, trailer: Bool) {
        self.year = year
        self.km = km
        self.window = window
        self.engine = engine
        self.door = door
        self.mark = mark
        self.model = model
        self.trailer = trailer
    }
    
    func checkWindow() -> Bool {
        if (closeWindow().self == true) {
            print("the window is closed")
        } else {
            print("the window is open")
        }
        return closeWindow().self
    }
    
    func checkEngine() -> Bool {
        if (engineOn().self == true) {
            print("engine on")
        } else {
            print("engine off")
        }
        return engineOn().self
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        if (trailer) {
            return "trunk car has trailer"
        } else {
            return "trunk car has no trailer"
        }
    }
}
var sportcar1 = SportCar(year: 2003, km: 10000.34, window: true, engine: true, door: false, mark: "Hundai", model: "Solaris", flowBreaker: true)
var trunkcar1 = TrunkCar(year: 2021, km: 100, window: false, engine: false, door: true, mark: "Toyota", model: "Rav 4", trailer: true)

sportcar1.checkEngine()
sportcar1.checkWindow()
print(sportcar1.description)

trunkcar1.checkEngine()
trunkcar1.checkWindow()
print(trunkcar1.description)

print("the sport car km is \(sportcar1.km), model is \(sportcar1.model), mark is \(sportcar1.mark)")
print("the sport car km is \(trunkcar1.km), model is \(trunkcar1.model), mark is \(trunkcar1.mark)")
