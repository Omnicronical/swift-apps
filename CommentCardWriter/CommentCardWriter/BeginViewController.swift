//
//  BeginViewController.swift
//  CommentCardWriter
//
//  Created by Hassall, Oscar (HWTA) on 03/03/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class BeginViewController: UIViewController {

    @IBOutlet var subjectOne: UITextField!
    @IBOutlet var subjectTwo: UITextField!
    @IBOutlet var subjectThree: UITextField!
    @IBOutlet var subjectFour: UITextField!
    var subject : [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func beginButtonPressed(_ sender: Any) {
        if subjectOne.text != nil {
            subject.append(subjectOne.text!)
        }
        if subjectTwo.text != nil {
            subject.append(subjectTwo.text!)
        }
        if subjectThree.text != nil {
            subject.append(subjectThree.text!)
        }
        if subjectFour.text != nil {
            subject.append(subjectFour.text!)
        }
        
        guard let vc = storyboard?.instantiateViewController(identifier: "ViewController", creator: { coder in
        return ViewController(coder: coder, subject: self.subject)
        )})else { fatalError("OOF") }
            navigationController?.pushViewController(vc, animated: true)

        
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
