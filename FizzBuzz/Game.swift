//
//  Game.swift
//  FizzBuzz
//
//  Created by Robby Kim on 4/8/17.
//  Copyright © 2017 Robby. All rights reserved.
//

import Foundation

class Game {
    
    var score: Int
    let brain: Brain
   
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: String) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
    
}
