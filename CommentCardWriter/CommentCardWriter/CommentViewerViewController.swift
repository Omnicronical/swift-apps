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
    
    var comment: Comment
    
    init?(coder: NSCoder, comment: Comment) {
        self.comment = comment
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "COMMENT"
        commentDisplay.text = comment.content
                // Do any additional setup after loading the view.
    }
    
    
    @IBAction func copyButtonPushed(_ sender: Any) {
        let pasteBoard = UIPasteboard.general
        pasteBoard.string = comment.content
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
