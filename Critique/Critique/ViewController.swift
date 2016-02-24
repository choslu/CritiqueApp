//
//  ViewController.swift
//  Critique
//
//  Created by Christopher Oslund on 2/23/16.
//  Copyright © 2016 Christopher Oslund. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    
    @IBOutlet weak var menuButtonConstraint_Bottom: NSLayoutConstraint!
    @IBAction func menuButtonPressed(sender: AnyObject) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //menuButton.center.x = 10.0
       //menuButton.center.y = 10.0
               // Do any additional setup after loading the view, typically from a nib.
        
        var currentConstraint = menuButtonConstraint_Bottom.constant
        var newConstraint = currentConstraint + 100
        //menuButtonConstraint_Bottom.constant = newConstraint
        
        self.view.layoutIfNeeded()
        
        UIView.animateWithDuration(1, animations: {
            self.menuButtonConstraint_Bottom.constant = newConstraint
            self.view.layoutIfNeeded()
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

