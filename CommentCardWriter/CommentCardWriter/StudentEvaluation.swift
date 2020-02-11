//
//  StudentEvaluation.swift
//  CommentCardWriter
//
//  Created by Hassall, Oscar (HWTA) on 11/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class StudentEvaluation {
    
    var enjoyment: Int = 0
    var weakness: String = "You have not inputted anything"
    var strength: String = "You have not inputted anything"
    var enjoymentPhrase: String = "You have not inputted your enjoyment"
    
    init( _ enjoyment: Int, _ weakness: String, _ strength: String) {
        self.enjoyment = enjoyment
        self.weakness = weakness
        self.strength = strength
        if enjoyment == 1 {
            self.enjoymentPhrase = "Yeeees"
        }
    }
    
    
}
