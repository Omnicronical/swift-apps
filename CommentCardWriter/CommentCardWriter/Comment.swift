//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Hassall, Oscar (HWTA) on 11/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Comment{
    
    var subject: String = "You have not generated a comment"
    var characterCount: Int = 0
    var content: String = "You have not generated a comment"
    
    init(_ subject: String, _ characterCount: Int, _ content: String) {
        self.subject = subject
        self.characterCount = characterCount
        self.content = content
    }
}
