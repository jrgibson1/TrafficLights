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
        resetButton.setTitleColor(UIColor(red: (234/255.0), green: (230/255.0), blue: (225/255.0), alpha: 1.0), for: .normal)
        resetButton.backgroundColor = UIColor(red: (234/255.0), green: (230/255.0), blue: (225/255.0), alpha: 1.0)
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        amberLight.layer.cornerRadius = amberLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        buttonRotate.layer.cornerRadius = buttonRotate.frame.height / 2
    }
    
    @IBAction func redPressed(_ sender: Any) {
        redButton.backgroundColor = UIColor(red: (187/255.0), green: (30/255.0), blue: (5/255.0), alpha: 1.0)
        amberButton.backgroundColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
        greenButton.backgroundColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
        redDescription.textColor = UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0)
        amberDescription.textColor = UIColor(red: (157/255.0), green: (157/255.0), blue: (156/255.0), alpha: 1.0)
        greenDescription.textColor = UIColor(red: (157/255.0), green: (157/255.0), blue: (156/255.0), alpha: 1.0)
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0), for: .normal)
        resetButton.backgroundColor = UIColor(red: (208/255.0), green: (208/255.0), blue: (208/255.0), alpha: 1.0)
    }
    
    @IBAction func redButtonPressedOnce(_ sender: Any) {
        redLight = !redLight
        updateRedButton()
    }
    
    func updateRedButton() {
        if red
    }
    
    @IBAction func amberPressed(_ sender: Any) {
        redButton.backgroundColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
        amberButton.backgroundColor = UIColor(red: (247/255.0), green: (181/255.0), blue: (5/255.0), alpha: 1.0)
        greenButton.backgroundColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
        redDescription.textColor = UIColor(red: (157/255.0), green: (157/255.0), blue: (156/255.0), alpha: 1.0)
        amberDescription.textColor = UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0)
        greenDescription.textColor = UIColor(red: (157/255.0), green: (157/255.0), blue: (156/255.0), alpha: 1.0)
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0), for: .normal)
        resetButton.backgroundColor = UIColor(red: (208/255.0), green: (208/255.0), blue: (208/255.0), alpha: 1.0)
    }
    
    @IBAction func greenPressed(_ sender: Any) {
        redButton.backgroundColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
        amberButton.backgroundColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
        greenButton.backgroundColor = UIColor(red: (0/255.0), green: (131/255.0), blue: (81/255.0), alpha: 1.0)
        redDescription.textColor = UIColor(red: (157/255.0), green: (157/255.0), blue: (156/255.0), alpha: 1.0)
        amberDescription.textColor = UIColor(red: (157/255.0), green: (157/255.0), blue: (156/255.0), alpha: 1.0)
        greenDescription.textColor = UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0)
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0), for: .normal)
        resetButton.backgroundColor = UIColor(red: (208/255.0), green: (208/255.0), blue: (208/255.0), alpha: 1.0)
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        redButton.backgroundColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
        amberButton.backgroundColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
        greenButton.backgroundColor = UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0)
        redDescription.textColor = UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0)
        amberDescription.textColor = UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0)
        greenDescription.textColor = UIColor(red: (102/255.0), green: (102/255.0), blue: (102/255.0), alpha: 1.0)
        resetButton.setTitle("", for: .normal)
        resetButton.setTitleColor(UIColor(red: (0/255.0), green: (0/255.0), blue: (0/255.0), alpha: 1.0), for: .normal)
        resetButton.backgroundColor = UIColor(red: (234/255.0), green: (230/255.0), blue: (225/255.0), alpha: 1.0)
    }
    
    
    var lightState: TrafficLightState = .red  {
        didSet {
            redLight.backgroundColor = lightState == .red ? UIColor(red: (187/255.0), green: (30/255.0), blue: (5/255.0), alpha: 1.0) : .black
            amberLight.backgroundColor = lightState == .amber ? UIColor(red: (247/255.0), green: (181/255.0), blue: (5/255.0), alpha: 1.0) : .black
            greenLight.backgroundColor = lightState == .green ? UIColor(red: (0/255.0), green: (131/255.0), blue: (81/255.0), alpha: 1.0) : .black
        }
    }
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        redLight = createLight(CGPoint(x: 150, y: 20), color: .red)
        amberLight = createLight(CGPoint(x: 150, y: 120), color: .black)
        greenLight = createLight(CGPoint(x: 150, y: 220), color: .black)
        view.addSubview(redLight)
        view.addSubview(amberLight)
        view.addSubview(greenLight)
        
        buttonRotate = UIButton()
        buttonRotate.frame = CGRect(x: 130, y: 330, width: 120, height: 30)
        buttonRotate.setTitle("Start", for: .normal)
        buttonRotate.backgroundColor = UIColor.lightGray
        buttonRotate.layer.cornerRadius = 15
        buttonRotate.addTarget(self, action: #selector(startTapped(_:)), for: .touchUpInside)
        view.addSubview(buttonRotate)
        
        self.view = view
    }
    
    func createLight(_ point: CGPoint, color: UIColor) -> UIView {
        let light = UIView()
        light.frame = CGRect(origin: point, size: CGSize(width: 75, height: 75))
        light.backgroundColor = color
        light.layer.cornerRadius = light.frame.height / 2
        return light
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
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true, block: { timer in
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
        case .amber:
            self.lightState = .red
        case .green:
            self.lightState = .amber
        }
    }
    
    func stopTimer() {
        buttonRotate.setTitle("Start", for: .normal)
        timer?.invalidate()
        timer = nil // use the nullability of the timer var to track if one is active
    }
}


