//
//  OpeningVC.swift
//  no-stroyboardExercise
//
//  Created by Jeanne Mitchell on 6/28/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import UIKit

class OpeningVC: UIViewController {
    
    var firstVC: FirstVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadFirstView(sender: AnyObject) {
        firstVC = FirstVC(nibName: "FirstVC", bundle: nil)
        self.presentViewController(firstVC, animated: true, completion: nil)
    }

}
