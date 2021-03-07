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
        return checkWindow() == true
    }
}
extension Car {
    func closeWindow() -> Bool {
        return checkWindow() == true
    }
}
extension Car {
    func engineOn() -> Bool {
        return checkEngine() == true
    }
}
extension Car {
    func engineOff() -> Bool {
        return checkEngine() == true
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

