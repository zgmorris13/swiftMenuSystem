//
//  SubViewController.swift
//  TestMenuSystem
//
//  Created by Zachary Morris on 7/3/15.
//  Copyright (c) 2015 Zachary Morris. All rights reserved.
//

import Foundation
import UIKit

class ScriptureListViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource {
    
//    @IBAction func goBack(sender: AnyObject) {}
    
    @IBOutlet weak var canonLabel: UILabel!
   
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set up tableview?
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "scriptureCell")
        canonLabel.text = "Book of Mormon"
        
    }
    
    // Set the number of rows
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDelegate.bom.count
    }
    
    // create the cell
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Create cell
        let scriptureCell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("scriptureCell")! as! UITableViewCell
        
        // Assign the text for the cell
        scriptureCell.textLabel?.text = appDelegate.bom[indexPath.row][0]
        
        return scriptureCell
    }
    
        // Handle what happens when you select a celloverride 
        override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            print("You selected cell #\(indexPath.row)!", appendNewline: false)
            appDelegate.scripture = appDelegate.activeCanon[indexPath.row][3]
    
        }
    
    
    
}