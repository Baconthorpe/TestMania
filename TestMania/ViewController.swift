//
//  ViewController.swift
//  TestMania
//
//  Created by Ezekiel Abuhoff on 4/19/16.
//  Copyright © 2016 Ezekiel Abuhoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: UI
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func behaveTapped(sender: AnyObject) {
        statusLabel.text = "COOL"
        statusLabel.backgroundColor = UIColor.blueColor()
        goodBehavior()
    }
    @IBAction func misbehaveTapped(sender: AnyObject) {
        statusLabel.text = "YIKES!"
        statusLabel.backgroundColor = UIColor.redColor()
        badBehavior()
    }
    
    // MARK: Status
    
    var everythingIsAwesome: Bool = true
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Behavior
    
    func goodBehavior() {
        everythingIsAwesome = true
    }
    
    func badBehavior() {
        everythingIsAwesome = false
    }
}

