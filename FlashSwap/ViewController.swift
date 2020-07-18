//
//  ViewController.swift
//  FlashSwap
//
//  Created by Fernando Serrano on 7/17/20.
//  Copyright © 2020 FIU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let question: [String] = ["4+4?", "whats my name?", "what the meaning of life?"]
    let answer: [String] = ["8", "Fernie", "42"]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = question[index]
    }

    @IBAction func nextQuestion(_ sender: UIButton){
        index += 1
        if index == question.count{
            index = 0
            questionLabel.text = question[index]
        } else {
            questionLabel.text = question[index]
        }
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        answerLabel.text = answer[index]
    }

}

