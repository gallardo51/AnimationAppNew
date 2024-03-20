//
//  DataManager.swift
//  AnimationAppNew
//
//  Created by Александр Соболев on 13.03.2024.
//

import SpringAnimation

final class DataManager {
    
    static let shared = DataManager()
    
    let animations = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
