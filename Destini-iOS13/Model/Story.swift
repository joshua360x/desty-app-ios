//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct Story {
    let text: String
    let choice1: String
    let choice2: String
    let choice1Destination: Int
    let choice2Destination: Int
    
    init(story: String, c1: String, choice1Destination: Int, c2: String, choice2Destination: Int) {
        text = story
        choice1 = c1
        choice2 = c2
        self.choice1Destination = choice1Destination
        self.choice2Destination = choice2Destination
    }
}

