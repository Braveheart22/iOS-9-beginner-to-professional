//
//  ViewController.swift
//  multiples
//
//  Created by Jeanne Mitchell on 6/6/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var multiple: Int = 0
    var currentMultiple: Int = 0
    let maxMultiple: Int = 100

    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var multipleToAddByText: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var multiplesLbl: UILabel!
    
    @IBAction func onPlayPress (sender: UIButton!) {
        
        if multipleToAddByText.text != nil && multipleToAddByText.text != "" {
            
            multiple = Int(multipleToAddByText.text!)!
            currentMultiple = 0
            
            logoImg.hidden = true
            playButton.hidden = true
            multipleToAddByText.hidden = true
            
            addBtn.hidden = false
            multiplesLbl.hidden = false
        }
        
    }
    
    @IBAction func onAddButtonPress (sender: UIButton!) {
        multiplesLbl.text = "Works without variables..."
        multiplesLbl.text = "\(currentMultiple) + \(multiple) = \(currentMultiple + multiple)"
        currentMultiple += multiple
        
        if currentMultiple > maxMultiple {
            logoImg.hidden = false
            playButton.hidden = false
            multipleToAddByText.hidden = false
            
            addBtn.hidden = true
            multiplesLbl.hidden = true
            currentMultiple = 0
            multiple = 0
            multipleToAddByText.text = ""
            multiplesLbl.text = "Press ADD to add!"
            
        }
    }
    
}

