//
//  ViewController.swift
//  tapper
//
//  Created by Jeanne Mitchell on 6/3/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    //Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinTapped (sender: UIButton!) {
        currentTaps += 1
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlyButtonPressed (sender: UIButton!) {
        
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
            maxTaps = Int(howManyTapsText.text!)!
            currentTaps = 0
            
            logoImage.hidden = true
            playButton.hidden = true
            howManyTapsText.hidden = true
            
            tapsLabel.hidden = false
            tapButton.hidden = false
            
            updateTapsLabel()

        }
    }
    
    func restartGame () {
        maxTaps = 0
        howManyTapsText.text = ""
        
        logoImage.hidden = false
        playButton.hidden = false
        howManyTapsText.hidden = false
        
        tapsLabel.hidden = true
        tapButton.hidden = true
    }
    
    func isGameOver () -> Bool {
        if (currentTaps >= maxTaps) {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel () {
        tapsLabel.text = "\(currentTaps) Taps"
    }

}

