//
//  CommentCard.swift
//  CommentCardWriter
//
//  Created by Hassall, Oscar (HWTA) on 29/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

struct CommentCard {
    
    var card: [String] = []
    
    mutating func addComment(comment: String) {
        card.append(comment)
    }
    
    
    
}
