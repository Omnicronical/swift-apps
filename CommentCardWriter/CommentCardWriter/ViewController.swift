//
//  ViewController.swift
//  CommentCardWriter
//
//  Created by Hassall, Oscar (HWTA) on 11/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let commentGenerator = CommentGenerator()
    let subjects = ["Maths","Computer Science", "English", "Design"]
    var subject: String = ""
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setCustomBackImage()
        navigationItem.title = "COMMENT CARD GENERATOR"
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Subject", for: indexPath)
        cell.textLabel?.text = subjects[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        subject = subjects[indexPath.row]
        guard let vc = storyboard?.instantiateViewController(identifier: "CommentGeneratorViewController", creator: { coder in
            return CommentGeneratorViewController(coder: coder, subject: self.subject
                
        )})else { fatalError("OOF") }
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    
        
   
        
        
        
    
    
    
    func setCustomBackImage() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "BACK", style: .plain, target: nil, action: nil)
    }

}

