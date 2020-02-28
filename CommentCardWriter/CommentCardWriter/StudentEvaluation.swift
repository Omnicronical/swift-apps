//
//  StudentEvaluation.swift
//  CommentCardWriter
//
//  Created by Hassall, Oscar (HWTA) on 11/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class StudentEvaluation {
    
    var enjoyment: String = ""
    var weakness: String = "You have not inputted anything"
    var strength: String = "You have not inputted anything"
    var enjoymentPhrase: String = ""
    
    init( _ enjoyment: String, _ weakness: String, _ strength: String) {
        self.enjoyment = enjoyment
        self.weakness = weakness
        self.strength = strength
        switch enjoyment {
        case "1":
            enjoymentPhrase = "very little"
        case "2":
            enjoymentPhrase = "somewhat"
        case "3":
            enjoymentPhrase = ""
        case "4":
            enjoymentPhrase = "a lot"
        case "5":
            enjoymentPhrase = "very much"
        default:
            enjoymentPhrase = "You have not inputted your enjoyment"
        }
        
    }
    
    
}
