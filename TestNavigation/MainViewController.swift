//
//  ViewController.swift
//  TestNavigation
//
//  Created by Zachary Morris on 7/6/15.
//  Copyright (c) 2015 Zachary Morris. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBAction func unwindToSegue (segue : UIStoryboardSegue) {
        scriptureTextView.text = appDelegate.scripture
    }
    
    @IBAction func changeButton(sender: AnyObject) {
        appDelegate.scripture = appDelegate.activeCanon[1][3]
        scriptureTextView.text = appDelegate.scripture
    }
    var scripture = String()
    
    @IBOutlet weak var scriptureTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.activeCanon = appDelegate.bom
        scripture = appDelegate.activeCanon[0][3]
        
        scriptureTextView.text = scripture
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

