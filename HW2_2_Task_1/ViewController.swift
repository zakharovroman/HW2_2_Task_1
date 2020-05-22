//
//  ViewController.swift
//  HW2_2_Task_1
//
//  Created by Роман Захаров on 22.05.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColorView()
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColorView()
    }
    
    func setColorView() {
        redLabel.text = String(redSlider.value)
        blueLabel.text = String(blueSlider.value)
        greenLabel.text = String(greenSlider.value)
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
}

