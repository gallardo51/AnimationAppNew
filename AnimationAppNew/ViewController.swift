//
//  ViewController.swift
//  AnimationAppNew
//
//  Created by Александр Соболев on 13.03.2024.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
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


}

