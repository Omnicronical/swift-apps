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
    var attainment: Int = 0
    var enjoymentPhrase: String = ""
    var attainmentPhrase: String = ""
    
    init( _ enjoyment: String, _ weakness: String, _ strength: String, _ attainment: Int) {
        self.enjoyment = enjoyment
        self.weakness = weakness
        self.strength = strength
        self.attainment = attainment
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
        
        switch attainment {
        case 1:
            attainmentPhrase = "very badly"
        case 2:
            attainmentPhrase = "alright"
        case 3:
            attainmentPhrase = "averagely"
        case 4:
            attainmentPhrase = "pretty well"
        case 5:
            attainmentPhrase = "well"
        case 6:
            attainmentPhrase = "very well"
        default:
            attainmentPhrase = "You have not inputted your enjoyment"
        }
        
    }
    
    
}
