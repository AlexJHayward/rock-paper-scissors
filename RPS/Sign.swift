//
//  Sign.swift
//  RPS
//
//  Created by Alex Hayward on 27/06/2020.
//  Copyright © 2020 Alex Hayward. All rights reserved.
//

import Foundation
import GameplayKit

enum Sign {
    case rock, paper, scissors
    
    func compare(_ other: Sign) -> Result {
        switch (self, other) {
            case (.rock, .scissors): return .win
            case (.rock, .paper): return .lose
            case (.rock, .rock): return .draw
            case (.scissors, .rock): return .lose
            case (.scissors, .paper): return .win
            case (.scissors, .scissors): return .draw
            case (.paper, .rock): return .win
            case (.paper, .scissors): return .lose
            case (.paper, .paper): return .draw
        }
    }
    
    func emoji() -> String {
        switch self {
            case .rock: return "👊"
            case .paper: return "✋"
            case .scissors: return "✌️"
        }
    }
}

class SignGenerator {
    
    private let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
    
    func randomSign() -> Sign {
        let i = randomChoice.nextInt()
        let opts = [Sign.rock, Sign.paper, Sign.scissors]
        
        return opts[i]
    }
    
    static let generator = SignGenerator()
    
    private init() {
        
    }
}
