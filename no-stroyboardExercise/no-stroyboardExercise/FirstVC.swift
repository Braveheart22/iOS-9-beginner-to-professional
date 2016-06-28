//
//  firstVC.swift
//  no-stroyboardExercise
//
//  Created by Jeanne Mitchell on 6/28/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    var openingVC: OpeningVC!
    var secondVC: SecondVC!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadOpeningView(sender: AnyObject) {
        openingVC = OpeningVC(nibName: "OpeningVC", bundle: nil)
        self.presentViewController(openingVC, animated: true, completion: nil)
    }
    
    @IBAction func loadSecondView(sender: AnyObject) {
        secondVC = SecondVC(nibName: "SecondVC", bundle: nil)
        self.presentViewController(secondVC, animated: true, completion: nil)
    }
}
