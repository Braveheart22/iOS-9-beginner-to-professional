//
//  BlueVC.swift
//  no-storyboards
//
//  Created by Jeanne Mitchell on 6/28/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {
    
    @IBOutlet weak var printLbl: UILabel!
    var printText = ""
    
    convenience init(printMe: String) {
        self.init(nibName: "BlueVC", bundle: nil)
        printText = printMe
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        printLbl.text = printText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
