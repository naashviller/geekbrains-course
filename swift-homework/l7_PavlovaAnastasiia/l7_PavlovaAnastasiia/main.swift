//
//  main.swift
//  l7_PavlovaAnastasiia
//
//  Created by Anastasiia Pavlova on 3/14/21.
//  Copyright © 2021 student. All rights reserved.
//

import Foundation

struct Tasks {
    var hard: String
    var medium: String
    var easy: String
}

enum Colleagues {
    case boss
    case usualWorkers
    case Manager
}

struct Task {
    var priority: String
    var costMoney: Int
    var time: Double
    var complexity:Tasks
    
}

enum doTasksError: Error {
    case noTasks
    case tooMachTasks
    case anotherTask
}

class DelegateTasks {
    
    var tasks = [
        "Write program": Task(priority: "high", costMoney: 50000, time: 120, complexity: Tasks(hard: "hard", medium: "nil", easy: "nil")),
        "Do road map": Task(priority: "low", costMoney: 5230, time: 8, complexity: Tasks(hard: "nil", medium: "medium", easy: "nil")),
        "Give salary": Task(priority: "very high", costMoney: 500000, time: 24, complexity: Tasks(hard: "nil", medium: "medium", easy: "nil"))
    ]
    
    func doTasks(taskName name: String) throws -> (Tasks?, doTasksError?) {
        
        guard let taskName = tasks[name] else {
            return (nil, doTasksError.anotherTask)
        }
        
        guard name.count > 0  else {
            throw doTasksError.noTasks
        }
        
        do {
            name.contains("error")
        } catch let error {
            print( doTasksError.tooMachTasks)
        }
         
        switch name {
        case "Write program":
            print("this task will do \(Colleagues.usualWorkers)")
        case "Do road map":
            print("this task will do \(Colleagues.Manager) and \(Colleagues.boss)")
        default:
            print("this task will do \(Colleagues.boss)")
        }
        print("the task complexity is \(taskName.complexity)")
        return (taskName.complexity, nil)
        
    }
    
    
}


let task = DelegateTasks()
let task1 = try task.doTasks(taskName: "Write program")
let task2 = try task.doTasks(taskName: "frfrfr")
let task3 = try task.doTasks(taskName: "Do road map")
let rask4 = try task.doTasks(taskName: "error FFFUK")

