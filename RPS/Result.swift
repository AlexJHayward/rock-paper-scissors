//
//  Result.swift
//  RPS
//
//  Created by Alex Hayward on 27/06/2020.
//  Copyright © 2020 Alex Hayward. All rights reserved.
//

import Foundation
import GameplayKit

fileprivate let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

enum Result {
    case win, lose, draw
    
    func message() -> String {
        let i = randomChoice.nextInt()
        
        let loseMessages = ["Better luck next time!", "You lost!", "Today's not your day!"]
        let winMessages = ["Well done!", "You beat the machine!", "Bravo!"]
        let drawMessages = ["Great minds think alike!", "You read my mind!", "It's a draw!"]
        
        switch self {
            case .win: return winMessages[i]
            case .lose: return loseMessages[i]
            case .draw: return drawMessages[i]
        }
    }
}
