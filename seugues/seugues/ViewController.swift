//
//  ViewController.swift
//  seugues
//
//  Created by Jeanne Mitchell on 6/27/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToPurple" {
            if let blueVC = segue.destinationViewController as? blueViewController {
                blueVC.transferText = "Hey, We just came from the yellow screen."
            }
        }
    }

}

