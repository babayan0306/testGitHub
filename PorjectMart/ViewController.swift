//
//  ViewController.swift
//  PorjectMart
//
//  Created by Yurka Babayan on 03.03.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var finalButton: UILabel!
    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func sliderAction(_ sender: UISlider) {
        sender.minimumValue = 0
        sender.maximumValue = 100
        myLabel.text = String(Int(sender.value))
    }
    
    @IBAction func enterButton(_ sender: UIButton) {
        finalButton.text = myLabel.text
        sender.backgroundColor = .yellow
        sender.tintColor = .black
    }
    
    
    @IBAction func myTumbler(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
        myLabel.tintColor = .red
    }
}

