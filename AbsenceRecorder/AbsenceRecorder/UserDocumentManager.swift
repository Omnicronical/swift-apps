//
//  UserDocumentManager.swift
//  AbsenceRecorder
//
//  Created by Hassall, Oscar (HWTA) on 09/03/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class UserDocumentManager {
    
    static func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
}
