//
//  DataManager.swift
//  AnimationAppNew
//
//  Created by Александр Соболев on 13.03.2024.
//

import SpringAnimation

class DataManager {
    
    static let shared = DataManager()
    
    let animations: [AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .slideRight,
        .squeezeUp,
        .swing,
        .wobble,
        .zoomIn,
        .zoomOut
    ]
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
