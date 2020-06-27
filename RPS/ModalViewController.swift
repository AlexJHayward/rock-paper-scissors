//
//  ModalViewController.swift
//  RPS
//
//  Created by Alex Hayward on 27/06/2020.
//  Copyright © 2020 Alex Hayward. All rights reserved.
//

import Foundation
import UIKit

class ModalViewController: UIViewController {
    
    // MARK: Parameters
    var userInput: Sign? = nil
    
    // MARK: Outlets
    @IBOutlet weak var robotChoiceEmoji: UILabel!
    @IBOutlet weak var resultMessage: UILabel!
    
    // MARK: Actions
    @IBAction func playAgainPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let robotChoice = SignGenerator.generator.randomSign()

        let result = userInput!.compare(robotChoice)
        
        resultMessage.text = result.message()
        robotChoiceEmoji.text = robotChoice.emoji()
    }
}
