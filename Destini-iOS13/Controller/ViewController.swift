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
    
//    let newStory = [
//        Story(story: "You see a fork in the road", c1: "Take a left", c2: "Take a right"),
//        Story(story: "You see a tiger", c1: "Shout for help!", c2: "Playu Dead"),
//        Story(story: "You find a treasure chest", c1: "Open it", c2: "Check for traps"),
//    ]
    
    var storyBrain = StoryBrain()

    var usersChoice : String = ""
    //    let story0 = "You see a fork in the road"
    //    let choice1 = "Take a left"
    //    let choice2 = "Take a right"
    
    var choiceMade = 0
//    var storyNumber = 0
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        usersChoice = sender.currentTitle!
        storyBrain.nextStory(usersChoice: usersChoice)
        
        updateUI()
    }
    
    func updateUI() {
        //        if choice1Button {
        //            choiceMade += 1
        //        } else {
        //            choiceMade += 2
        //        }
        var choiceArr = storyBrain.getStoryChoice()
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(choiceArr[0], for: .normal)
        choice2Button.setTitle(choiceArr[1], for: .normal)
        
        
        
//        storyLabel.text = newStory[storyNumber].text
//        choice1Button.setTitle(newStory[storyNumber].choice1, for: .normal)
//        choice2Button.setTitle(newStory[storyNumber].choice2, for: .normal)
        
        
//        if usersChoice == newStory[storyNumber].choice1 {
//            print(choice1Button.currentTitle!)
//            print(newStory[storyNumber].choice1)
//            storyNumber += 1
//            storyLabel.text = newStory[storyNumber].text
//            choice1Button.setTitle(newStory[storyNumber].choice1, for: .normal)
//            choice2Button.setTitle(newStory[storyNumber].choice2, for: .normal)
//        }
//            else {
//            print("this line of code ran")
//            storyNumber += 2
//            storyLabel.text = newStory[storyNumber].text
//            choice1Button.setTitle(newStory[storyNumber].choice1, for: .normal)
//            choice2Button.setTitle(newStory[storyNumber].choice2, for: .normal)
//        }
//
//            if choice2Button.currentTitle! == newStory[storyNumber].choice2 {
//                    print(choice2Button.currentTitle!)
//                    print(newStory[storyNumber].choice2)
//                    storyNumber += 2
//                    storyLabel.text = newStory[storyNumber].text
//                    choice1Button.setTitle(newStory[storyNumber].choice1, for: .normal)
//                    choice2Button.setTitle(newStory[storyNumber].choice2, for: .normal)
                
            }
            
            
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var choiceArr = storyBrain.getStoryChoice()
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(choiceArr[0], for: .normal)
        choice2Button.setTitle(choiceArr[1], for: .normal)
        //        print(choice1Button.currentTitle)
        //        print(newStory[storyNumber].choice1)
        
        
    }
    
    
}

