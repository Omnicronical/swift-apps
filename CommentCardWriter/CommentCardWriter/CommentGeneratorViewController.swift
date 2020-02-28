//
//  CommentGeneratorViewController.swift
//  CommentCardWriter
//
//  Created by Hassall, Oscar (HWTA) on 11/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class CommentGeneratorViewController: UIViewController {
    
    let commentGenerator = CommentGenerator()
    
    var subject: String
    
    init?(coder: NSCoder, subject: String) {
        self.subject = subject
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet var weaknessTextField: UITextField!
    @IBOutlet var strengthTextField: UITextField!
    @IBOutlet var enjoymentLevelSelector: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "EDITOR"
        setCustomBackImage()
        
    }
    
    
    @IBAction func generateButtonPushed(_ sender: Any) {
        let weakness = weaknessTextField.text!
        let strength = strengthTextField.text!
        let whichSegment = enjoymentLevelSelector.selectedSegmentIndex
        let enjoyment = enjoymentLevelSelector.titleForSegment(at: whichSegment)
        if  weakness.count > 0 {
            if  strength.count > 0 {
                let input = StudentEvaluation(enjoyment!, weakness, strength)
                let comment = commentGenerator.generateComment(input: input, subject: subject)
                
                
                
                guard let vc = storyboard?.instantiateViewController(identifier: "CommentViewerViewController", creator: { coder in
                    return CommentViewerViewController(coder: coder, comment: comment
                )})else { fatalError("OOF") }
                navigationController?.pushViewController(vc, animated: true)
            }
        } else {
            let alert = UIAlertController(title: "Generate Failed", message: "You must input your WEAKNESS and STRENGTH", preferredStyle: .alert)
                       
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                       
            self.present(alert, animated: true)
        }
    }
    
        
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func setCustomBackImage() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "EDIT", style: .plain, target: nil, action: nil)
    }


}
