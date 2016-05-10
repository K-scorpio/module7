//
//  WeekTableViewController.swift
//  tableViewGuidedProject
//
//  Created by Kevin Hartley on 5/10/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import UIKit

class WeekTableViewController: UITableViewController {
    
    let daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source and delegate
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return daysOfWeek.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dayCell", forIndexPath: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = daysOfWeek[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath)
        print(indexPath.row)
        print(daysOfWeek[indexPath.row])
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toDayDetail" {
            if let dayDetailVC = segue.destinationViewController as? DayDetailViewController {
                if let dayCell = sender as? UITableViewCell {
                    if let indexPath = tableView.indexPathForCell(dayCell) {
                        dayDetailVC.day = daysOfWeek[indexPath.row]
                    }
                }
            }
        }
    }    
}
