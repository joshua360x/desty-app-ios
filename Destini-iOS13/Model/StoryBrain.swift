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
        Story(
                   story: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
                   c1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
                   c2: "Better ask him if he's a murderer first.", choice2Destination: 1
               ),
               Story(
                   story: "He nods slowly, unfazed by the question.",
                   c1: "At least he's honest. I'll climb in.", choice1Destination: 2,
                   c2: "Wait, I know how to change a tire.", choice2Destination: 3
               ),
               Story(
                   story: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                   c1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
                   c2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
               ),
               Story(
                   story: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                   c1: "The", choice1Destination: 0,
                   c2: "End", choice2Destination: 0
               ),
               Story(
                   story: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                   c1: "The", choice1Destination: 0,
                   c2: "End", choice2Destination: 0
               ),
               Story(
                   story: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
                   c1: "The", choice1Destination: 0,
                   c2: "End", choice2Destination: 0
               )

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
//                  storyNumber += 1
                storyNumber = newStory[storyNumber].choice1Destination
//                  storyLabel.text = newStory[storyNumber].text
//                  choice1Button.setTitle(newStory[storyNumber].choice1, for: .normal)
//                  choice2Button.setTitle(newStory[storyNumber].choice2, for: .normal)
              }
                  else {
                  print("this line of code ran")
//                  storyNumber += 2
                storyNumber = newStory[storyNumber].choice2Destination
//                  storyLabel.text = newStory[storyNumber].text
//                  choice1Button.setTitle(newStory[storyNumber].choice1, for: .normal)
//                  choice2Button.setTitle(newStory[storyNumber].choice2, for: .normal)
              }
        
//        storyNumber = 0
    }
    
}


