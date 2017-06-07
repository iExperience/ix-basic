//
//  ActivityTableViewController.swift
//  ixBasic
//
//  Created by Miki von Ketelhodt on 2017/06/07.
//  Copyright © 2017 RBG Applications. All rights reserved.
//

import UIKit

class ActivityTableViewController: UITableViewController, AddActivityDelegate {

    var activities: [Activity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let activity1 = Activity(name: "Act1", description: "Activity 1")
        activities.append(activity1!)
        
        let activity2 = Activity(name: "Act2", description: "Activity 2")
        activities.append(activity2!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "activityCell", for: indexPath)

        cell.textLabel?.text = activities[indexPath.row].name
        cell.detailTextLabel?.text = activities[indexPath.row].description

        return cell
    }
    
    /*
    func activityWasSaved(activity: Activity) {
        print("Activity was saved: \(activity)")
        activities.append(activity)
        self.tableView.reloadData()
    }
    */
    func didSaveActivity(activity: Activity) {
        activities.append(activity)
        self.tableView.reloadData()
    }
    
    func willSaveActivity() {
        // Ok we will be prepared...
    }
    
    func didCancel() {
        // Ok we understand...
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "navToActivityDetail" {
            let activityDetailViewController = segue.destination as! ActivityDetailViewController
            
            let cell = sender as! UITableViewCell
            let indexPath = self.tableView.indexPath(for: cell)
            
            activityDetailViewController.activity = activities[(indexPath?.row)!]
        }
        
        if segue.identifier == "navToAddActivity" {
            let navigationViewController = segue.destination as! UINavigationController
            
            let addActivityViewController = navigationViewController.topViewController as! AddActivityViewController
            
            //addActivityViewController.activityTableViewController = self
            addActivityViewController.delegate = self
        }
        
    }

}
