//
//  ViewController.swift
//  retroCalculator
//
//  Created by Jeanne Mitchell on 6/7/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Equals = "="
        case Empty = "Empty"
    }

    @IBOutlet weak var outputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var result = ""
    var currentOperation: Operation = Operation.Empty
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("button4", ofType: "wav")
        let soundURL = NSURL (fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer (contentsOfURL: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print (err.debugDescription)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func numberPresses (btn: UIButton!) {
        playSound()
        runningNumber += "\(btn.tag)"
        outputLbl.text = runningNumber
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
        processOperation(Operation.Divide)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
        processOperation(Operation.Multiply)
    }

    @IBAction func onAddPressed(sender: AnyObject) {
        processOperation(Operation.Add)
    }
    
    @IBAction func OnSubtractPressed(sender: AnyObject) {
        processOperation(Operation.Subtract)
    }
    
    @IBAction func onEqualsPressed(sender: AnyObject) {
        processOperation(currentOperation)
    }
    
    @IBAction func onClearPressed(sender: AnyObject) {
        playSound()
        reset()
    }
    
    func processOperation (op: Operation) {
        playSound()
        
        if currentOperation != Operation.Empty {
            // Run some math
            
            // A user selected an operator, but then se;ected another operator
            // without first selecting a number
            if runningNumber != "" {
                rightValStr = runningNumber
                runningNumber = ""
                
                if currentOperation == Operation.Multiply {
                    leftValStr = "\(Double (leftValStr)! * Double (rightValStr)!)"
                } else if currentOperation == Operation.Divide {
                    leftValStr = "\(Double (leftValStr)! / Double (rightValStr)!)"
                } else if currentOperation == Operation.Subtract {
                    leftValStr = "\(Double (leftValStr)! - Double (rightValStr)!)"
                } else if currentOperation == Operation.Add {
                    leftValStr = "\(Double (leftValStr)! + Double (rightValStr)!)"
                }
                
                outputLbl.text = leftValStr
            }
            currentOperation = op
            
        } else {
            //This is the first time an operator has been pressed
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = op
        }
    }
    
    func playSound () {
        if btnSound.playing {
            btnSound.stop()
        }
        btnSound.play()
    }
    
    func reset () {
        runningNumber = ""
        leftValStr = ""
        rightValStr = ""
        result = ""
        currentOperation = Operation.Empty
        outputLbl.text = "0"
    }
    
}

