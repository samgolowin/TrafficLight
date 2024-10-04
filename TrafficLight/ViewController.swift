//
//  ViewController.swift
//  TrafficLight
//
//  Created by Sam Golowin on 04.10.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var controlButton: UIButton!
    
    var currentLight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        controlButton.layer.cornerRadius = 10
        controlButton.setTitle("START", for: .normal)
        
    }

    @IBAction func controlButtonTapped(_ sender: UIButton) {
        if controlButton.currentTitle == "START" {
            controlButton.setTitle("NEXT", for: .normal)
            turnOnLight(0)
        } else {
            currentLight = (currentLight + 1) % 3
            turnOnLight(currentLight)
        }
            
    }
    
    func turnOnLight(_ light: Int) {
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3  
        
        switch light {
        case 0: redLightView.alpha = 1.0
        case 1: yellowLightView.alpha = 1.0
        case 2: greenLightView.alpha = 1.0
        default: break
        }
    }
    
}

