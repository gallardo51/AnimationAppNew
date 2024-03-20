//
//  ViewController.swift
//  AnimationAppNew
//
//  Created by Александр Соболев on 13.03.2024.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var animationView: SpringView! {
        didSet {
            animationView.layer.cornerRadius = animationView.frame.width / 2
        }
    }
    @IBOutlet weak var descriptionLabel: SpringLabel! {
        didSet {
            descriptionLabel.text = runAnimation.description
        }
    }
    //MARK: - Private properties
    private  var runAnimation = Animation.getRandomAnimation
    
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
        descriptionLabel.text = runAnimation.description
    }
    
    //MARK: - IB Actions
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        descriptionLabel.animation = "zoomOut"
        descriptionLabel.x = 50
        descriptionLabel.animate()
        descriptionLabel.text = runAnimation.description
        
        descriptionLabel.animateNext { [unowned self] in
            descriptionLabel.animation = "zoomIn"
            descriptionLabel.animate()
            
            animationView.animation = runAnimation.name
            animationView.force = CGFloat(runAnimation.force)
            animationView.delay = CGFloat(runAnimation.delay)
            animationView.curve = runAnimation.curve
            animationView.animate()
            
            runAnimation = Animation.getRandomAnimation
            sender.setTitle("Run \(runAnimation.name)", for: .normal)
        }
    }
}
