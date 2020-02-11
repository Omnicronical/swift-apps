//
//  CommentViewerViewController.swift
//  CommentCardWriter
//
//  Created by Hassall, Oscar (HWTA) on 11/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class CommentViewerViewController: UIViewController {
    
    @IBOutlet var commentDisplay: UILabel!
    
    var content:String = "NO"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "COMMENT"
        commentDisplay.text = content
                // Do any additional setup after loading the view.
    }
    
  
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
