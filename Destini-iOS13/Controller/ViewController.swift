//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let newStory = [
        Story(story: "You see a fork in the road", c1: "Take a left", c2: "Take a right"),
        Story(story: "You see a tiger", c1: "Shout for help!", c2: "Playu Dead"),
        Story(story: "You find a treasure chest", c1: "Open it", c2: "Check for traps"),
    ]
//    let story0 = "You see a fork in the road"
//    let choice1 = "Take a left"
//    let choice2 = "Take a right"
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = newStory[0].text
        choice1Button.setTitle(newStory[0].choice1, for: .normal)
        choice2Button.setTitle(newStory[0].choice2, for: .normal)

    }


}

