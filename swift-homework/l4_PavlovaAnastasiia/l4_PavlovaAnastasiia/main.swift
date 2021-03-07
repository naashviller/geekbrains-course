//
//  main.swift
//  l4_PavlovaAnastasiia
//
//  Created by Anastasiia Pavlova on 3/2/21.
//  Copyright © 2021 student. All rights reserved.
//

import Foundation

enum carDoorState {
    case open, close
}

enum engineCar {
    case on, off
}

enum hatchState {
    case open, close
}

class Car {
    init(mark: String, year: Int, km: Double, maxSpeed: Double, engine: engineCar) {
        self.mark =  mark
        self.year = year
        self.km = km
        self.maxSpeed = maxSpeed
        self.engine = engine
    }
    var mark: String
    var year: Int
    var km: Double
    var maxSpeed: Double
    var engine: engineCar
    
    
    func checkEngine(){}
}

class SportCar: Car {
    var hatch: hatchState
    var accelerateSpeed: Int
    
    init(mark: String, year: Int, km: Double, maxSpeed: Double, engine: engineCar, hatch: hatchState, accelerateSpeed: Int) {
        self.hatch = hatch
        self.accelerateSpeed = accelerateSpeed
        super.init(mark: mark, year: year, km: km, maxSpeed: maxSpeed, engine: engine)
    }
    
    func openHatch() {
        hatch = .open
        print("You just \(self.hatch) the door")
    }
    func closeHatch() {
        hatch = .close
        print("You just \(self.hatch) the door")
    }
    
    func speedInsrease() {
        print("You accelerate speed on \(accelerateSpeed) km")
    }
    
    override func checkEngine() {
        super.checkEngine()
        super.engine = .on
    }
}

class TrunkCar: Car {
    var increaseWeight: Int
    var doorState: carDoorState
    
    init(mark: String, year: Int, km: Double,  maxSpeed: Double, engine: engineCar, increaseWeight: Int, doorState: carDoorState) {
        self.increaseWeight = increaseWeight
        self.doorState = doorState
        super.init(mark: mark, year: year, km: km, maxSpeed: maxSpeed, engine: engine)
    }
    
    func checkDoorState() {
        if doorState == .close {
            print("The doors are closed")
        } else {
            print("The doors are open")
        }
    }
    func putWeight() {
        print("You put about \(increaseWeight) into the trunk car")
    }
    
    override func checkEngine() {
        super.checkEngine()
        super.engine = .off
    }
    
}


var sportCar1 = SportCar(mark: "Hundai", year: 2003, km: 130.67, maxSpeed: 300, engine: .off, hatch: .close, accelerateSpeed: 14)
var trunkCar1 = TrunkCar(mark: "Autovaz", year: 1998, km: 1004.56, maxSpeed: 250, engine: .on, increaseWeight: 130, doorState: .open)

sportCar1.speedInsrease()
sportCar1.openHatch()
sportCar1.checkEngine()
sportCar1.mark = "BMV"

trunkCar1.checkDoorState()
trunkCar1.checkEngine()
trunkCar1.increaseWeight = 100
trunkCar1.putWeight()

print("The sport car: mark: \(sportCar1.mark), year: \(sportCar1.year), the hatch is \(sportCar1.hatch), engine is \(sportCar1.engine)")
print("The trunk car: mark: \(trunkCar1.mark), the doorstate is \(trunkCar1.doorState), the weight increase on \(trunkCar1.increaseWeight), engine is \(trunkCar1.engine)")

