//
//  ViewController.swift
//  RedAndBlue
//
//  Created by Jeanne Mitchell on 5/31/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blue: UIImageView!
    @IBOutlet weak var red: UIImageView!
    @IBOutlet weak var hideBlue: UIButton!
    @IBOutlet weak var hideRed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hideBlueImage(sender: AnyObject) {
        blue.hidden = true
    }

    @IBAction func hideRedIMage(sender: AnyObject) {
        red.hidden = true
    }
}

