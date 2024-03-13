//
//  ViewController.swift
//  AnimationAppNew
//
//  Created by Александр Соболев on 13.03.2024.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView! {
        didSet {
            animationView.layer.cornerRadius = animationView.frame.width / 2
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    private let firstColor = UIColor(
        red: 140/255,
        green: 120/255,
        blue: 260/255,
        alpha: 1)

    private let secondColor = UIColor(
        red: 180/255,
        green: 100/255,
        blue: 160/255,
        alpha: 1)


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
    }

    @IBAction func runButtonPressed(_ sender: UIButton) {
    }
    
    
}

