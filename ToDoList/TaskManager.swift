//
//  TaskManager.swift
//  ToDoList
//
//  Created by Sa[m]eer on 12/6/16.
//  Copyright © 2016 Sameer Neema. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()
struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    
    var tasks = [task]()
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
        
    }
    
}
