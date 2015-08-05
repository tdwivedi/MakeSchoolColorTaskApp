//
//  RedViewController.swift
//  TemplateProject
//
//  Created by Trisha Dwivedi on 8/5/15.
//  Copyright (c) 2015 Make School. All rights reserved.
//

import UIKit
//import RealmSwift

class RedViewController: UIViewController {

    @IBOutlet weak var groupName: UILabel!
    
    @IBOutlet weak var redTableView: UITableView!
    
    var aaaGroupName = "---"
    var newTaskName = ""
    var newEndDate = ""
    
    //var selectedTask:Task!
    
    /*var tasks: Results<Task>! {
        didSet {
            // Whenever notes update, update the table view
            redTableView?.reloadData()
        }
    }*/
    
    var group: Group!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupName.text = aaaGroupName
        //redTableView.dataSource = self
        //redTableView.delegate = self
        //let realm = Realm()
        /*realm.write() {
            realm.add(self.aaaGroupName) //currentTask
        }*/
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //let realm = Realm()
        /*group.groupName = aaaGroupName
        realm.write() {
            realm.add(self.group)
        }*/
        //tasks = realm.objects(Task)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToSegue(segue: UIStoryboardSegue) {
        if let identifier = segue.identifier {
            //let realm = Realm()
            switch identifier {
            case "Add":
                let source = segue.sourceViewController as! NewTaskViewController
                newTaskName = source.taskTextField.text
                newEndDate = source.endDateTextField.text
                /*realm.write {
                    realm.add(source.currentTask!)
                }*/
            case "Back":
                println("do nothing")
            default:
                println("o k")
            }
            //tasks = realm.objects(Task)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

/*extension RedViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TaskCell", forIndexPath: indexPath) as! RedTableViewCell
        
        let row = indexPath.row
        let task = tasks[row] as Task
        cell.task = task
        
        //cell.checked = false
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int(tasks?.count ?? 0)
    }
    
}

extension RedViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //selectedTask = tasks[indexPath.row]
    }
    
    // 3
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    // 4
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == .Delete) {
            let task = tasks[indexPath.row] as Task
            
            /*let realm = Realm()
            
            realm.write() {
                realm.delete(task)
            }

            tasks = realm.objects(Task)*/
        }
    }
    
}*/
