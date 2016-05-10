//
//  DayDetailViewController.swift
//  tableViewGuidedProject
//
//  Created by Kevin Hartley on 5/10/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import UIKit

class DayDetailViewController: UIViewController {

    
    var day = String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    
    if let unwrappedDay = day {
        navigationItem.title = unwrappedDay
       
        }
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
