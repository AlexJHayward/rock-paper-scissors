//
//  ViewController.swift
//  RPS
//
//  Created by Alex Hayward on 27/06/2020.
//  Copyright © 2020 Alex Hayward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Parameters
    var userSelected: Sign?

    // MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        userSelected = nil
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        userSelected = nil
    }
    
    // MARK: Actions
    @IBAction func rockPressed(_ sender: UIButton) {
        showResultModal(selection: .rock)
    }
    
    @IBAction func paperPressed(_ sender: UIButton) {
        showResultModal(selection: .paper)
    }
    
    @IBAction func scissorsPressed(_ sender: UIButton) {
        showResultModal(selection: .scissors)
    }
    
    // MARK: Navigation
    private func showResultModal(selection: Sign) {
        let modal = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Result Modal") as! ModalViewController

        modal.userInput = selection
        
        self.present(modal, animated: true, completion: nil)
    }
}

