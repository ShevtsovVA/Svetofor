//
//  ViewController.swift
//  Svetofor
//
//  Created by Евгения Шевцова on 20.05.2021.
//

import UIKit

enum ChooseColor {
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    private var color = ChooseColor.red
    override func viewDidLoad() {
        super.viewDidLoad()
       
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        
        button.layer.cornerRadius = 10
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
       
    }
    @IBAction func tappedButton(_ sender: Any) {
        if button.currentTitle == "START" {
            button.setTitle("NEXT", for: .normal)
        }

        switch color {
        case .red:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            color = .yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
            color = .green
        case .green:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            color = .red
        }
        
    }

}

