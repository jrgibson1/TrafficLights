//
//  ViewController.swift
//  trafficLightsv2
//
//  Created by John Gibson on 13/12/17.
//  Copyright © 2017 John Gibson. All rights reserved.
//

import UIKit

enum TrafficLightState {
    case red, amber, green
}

let trafficRed = UIColor(red: (187/255.0), green: (30/255.0), blue: (5/255.0), alpha: 1.0)
let trafficAmber = UIColor(red: (247/255.0), green: (181/255.0), blue: (5/255.0), alpha: 1.0)
let trafficGreen = UIColor(red: (0/255.0), green: (131/255.0), blue: (81/255.0), alpha: 1.0)
let trafficDarkGrey = UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0)
let trafficLightGrey = UIColor(red: (157/255.0), green: (157/255.0), blue: (156/255.0), alpha: 1.0)
let trafficBlack = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
let trafficButtonBackground = UIColor(red: 154/255.0, green: (154/255.0), blue: (154/255.0), alpha: 1.0)
let trafficBackground = UIColor(red: (234/255.0), green: (230/255.0), blue: (225/255.0), alpha: 1.0)
let trafficButtonTitle = UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0)

class ViewController: UIViewController {
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var amberButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var redDescription: UILabel!
    @IBOutlet weak var amberDescription: UILabel!
    @IBOutlet weak var greenDescription: UILabel!
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var amberLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var buttonRotate: UIButton!
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redButton.layer.cornerRadius = redButton.frame.height / 2
        amberButton.layer.cornerRadius = amberButton.frame.height / 2
        greenButton.layer.cornerRadius = greenButton.frame.height / 2
        resetButton.layer.cornerRadius = resetButton.frame.height / 2
        resetButton.setTitleColor(trafficBackground, for: .normal)
        resetButton.backgroundColor = trafficBackground
        redLight.layer.cornerRadius = redLight.frame.height / 2
        amberLight.layer.cornerRadius = amberLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        buttonRotate.layer.cornerRadius = buttonRotate.frame.height / 2
    }
    
    @IBAction func redPressed(_ sender: Any) {
        redButton.backgroundColor = trafficRed
        amberButton.backgroundColor = trafficBlack
        greenButton.backgroundColor = trafficBlack
        redDescription.textColor = trafficDarkGrey
        amberDescription.textColor = trafficLightGrey
        greenDescription.textColor = trafficLightGrey
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(trafficButtonTitle, for: .normal)
        resetButton.backgroundColor = trafficButtonBackground
    }
    
    @IBAction func amberPressed(_ sender: Any) {
        redButton.backgroundColor = trafficBlack
        amberButton.backgroundColor = trafficAmber
        greenButton.backgroundColor = trafficBlack
        redDescription.textColor = trafficLightGrey
        amberDescription.textColor = trafficDarkGrey
        greenDescription.textColor = trafficLightGrey
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(trafficButtonTitle, for: .normal)
        resetButton.backgroundColor = trafficButtonBackground
    }
    
    @IBAction func greenPressed(_ sender: Any) {
        redButton.backgroundColor = trafficBlack
        amberButton.backgroundColor = trafficBlack
        greenButton.backgroundColor = trafficGreen
        redDescription.textColor = trafficLightGrey
        amberDescription.textColor = trafficLightGrey
        greenDescription.textColor = trafficDarkGrey
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(trafficButtonTitle, for: .normal)
        resetButton.backgroundColor = trafficButtonBackground
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        redButton.backgroundColor = trafficBlack
        amberButton.backgroundColor = trafficBlack
        greenButton.backgroundColor = trafficBlack
        redDescription.textColor = trafficDarkGrey
        amberDescription.textColor = trafficDarkGrey
        greenDescription.textColor = trafficDarkGrey
        resetButton.setTitle("", for: .normal)
        resetButton.setTitleColor(trafficButtonTitle, for: .normal)
        resetButton.backgroundColor = trafficBackground
    }
    
    
    var lightState: TrafficLightState = .red  {
        didSet {
            redLight.backgroundColor = lightState == .red ? trafficRed : .black
            amberLight.backgroundColor = lightState == .amber ? trafficAmber : .black
            greenLight.backgroundColor = lightState == .green ? trafficGreen : .black
        }
    }
    
    @IBAction func startTapped(_ sender: UIView) {
        if timer != nil {
            stopTimer()
        } else {
            startTimer()
        }
    }
    
    func startTimer() {
        buttonRotate.setTitle("Stop", for: .normal)
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
            self.incrementLightState()
            if self.lightState == .red {
                self.stopTimer() // after one cycle of lights, stop the timer
            }
        })
    }
    
    func incrementLightState() {
        switch self.lightState {
        case .red:
            self.lightState = .green
        case .green:
            self.lightState = .amber
        case .amber:
            self.lightState = .red
        }
    }
    
    func stopTimer() {
        buttonRotate.setTitle("Start", for: .normal)
        timer?.invalidate()
        timer = nil // use the nullability of the timer var to track if one is active
    }
}
