//
//  ViewController.swift
//  mvc-test
//
//  Created by Jeanne Mitchell on 6/17/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fullName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person = Person(first: "John", last: "Hancock")
        
        fullName.text = person.fullName
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

