//
//  Model.swift
//  AnimationAppNew
//
//  Created by Александр Соболев on 13.03.2024.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let delay: Float
    
    var description: String {
    """
    present: \(name)
    curve: \(curve)
    force: \(String(format: "%2f", force))
    delay: \(String(format: "%2f", delay))
    """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 0.5...1),
            delay: Float.random(in: 0.1...0.3)
        )
    }
}
