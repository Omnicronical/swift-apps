//
//  CommentGenerator.swift
//  CommentCardWriter
//
//  Created by Hassall, Oscar (HWTA) on 11/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class CommentGenerator {
    
    
    
    func generateComment(input: StudentEvaluation, subject: String) -> Comment {
        let content = "I am enjoying \(subject) \(input.enjoymentPhrase). I think my weaknesses are \(input.weakness) and my strengths are \(input.strength). I feel like I'm doing \(input.attainmentPhrase)"
        let characterCount = content.count
        let myComment = Comment(subject, characterCount, content)
        return myComment
    }
    
}
