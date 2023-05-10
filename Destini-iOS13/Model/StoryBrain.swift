//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0

    
    let newStory = [
        Story(story: "You see a fork in the road", c1: "Take a left", c2: "Take a right"),
        Story(story: "You see a tiger", c1: "Shout for help!", c2: "Playu Dead"),
        Story(story: "You find a treasure chest", c1: "Open it", c2: "Check for traps"),
    ]
    
    func getStoryText() -> String {
        return newStory[storyNumber].text
    }
    
    func getStoryChoice() -> Array<String> {
          var choiceOne = newStory[storyNumber].choice1
          var choiceTwo = newStory[storyNumber].choice2
          var newArr = [String]()
        newArr.append(choiceOne)
        newArr.append(choiceTwo)
        return newArr
      }
    
    
    mutating func nextStory(usersChoice: String) {
        
              if usersChoice == newStory[storyNumber].choice1 {
                  storyNumber += 1
//                  storyLabel.text = newStory[storyNumber].text
//                  choice1Button.setTitle(newStory[storyNumber].choice1, for: .normal)
//                  choice2Button.setTitle(newStory[storyNumber].choice2, for: .normal)
              }
                  else {
                  print("this line of code ran")
                  storyNumber += 2
//                  storyLabel.text = newStory[storyNumber].text
//                  choice1Button.setTitle(newStory[storyNumber].choice1, for: .normal)
//                  choice2Button.setTitle(newStory[storyNumber].choice2, for: .normal)
              }
        
//        storyNumber = 0
    }
    
}


