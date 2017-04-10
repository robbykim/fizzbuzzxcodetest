//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Robby Kim on 4/7/17.
//  Copyright © 2017 Robby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var game: Game?
    var gameScore: Int? {
        didSet {
            numberButton.setTitle("1", for: .normal)
        }
    }
   
    @IBOutlet weak var numberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        guard let unwrappedGame = game else {
            print("game is nil")
            return
        }
        
        gameScore = unwrappedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }

        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        guard let unwrappedScore = gameScore else {
            print("Game score is nil")
            return
        }
        
        let nextScore = unwrappedScore + 1
        play(move: "\(nextScore)")
    }
    
}

