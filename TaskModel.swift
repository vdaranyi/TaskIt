//
//  TaskModel.swift
//  TaskIt
//
//  Created by Vincent on 29/10/2014.
//  Copyright (c) 2014 VD. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel) // creates Obj-C bridge if we want to use it within our TaskModel, though not necessary here


class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
