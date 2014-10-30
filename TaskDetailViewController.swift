//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Vincent on 27/10/2014.
//  Copyright (c) 2014 VD. All rights reserved.
//

import UIKit
import CoreData

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var detailTask: UITextField!
    @IBOutlet weak var detailSubtask: UITextField!
    @IBOutlet weak var detailDate: UIDatePicker!
    
    
    var detailTaskModel: TaskModel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        detailTask.text = detailTaskModel.task
        detailSubtask.text = detailTaskModel.subtask
        detailDate.date = detailTaskModel.date
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func doneButtonTapped(sender: UIBarButtonItem) {
        let appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        detailTaskModel.task = detailTask.text
        detailTaskModel.subtask = detailSubtask.text
        detailTaskModel.date = detailDate.date
        detailTaskModel.completed = detailTaskModel.completed
        
        appDelegate.saveContext()
        
        
        self.navigationController?.popViewControllerAnimated(true)
    }

}
