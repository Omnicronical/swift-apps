//
//  CommentGeneratorViewController.swift
//  CommentCardWriter
//
//  Created by Hassall, Oscar (HWTA) on 11/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class CommentGeneratorViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let commentGenerator = CommentGenerator()
    
    var subject: String
    let attainmentArray = ["Very Badly","Alright","Averagely","Pretty well","Well","Very Well"]
    
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
    @IBOutlet var attainmentPicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "EDITOR"
        setCustomBackImage()
        attainmentPicker.delegate = self
        attainmentPicker.dataSource = self
    }
    
    
    @IBAction func generateButtonPushed(_ sender: Any) {
        let weakness = weaknessTextField.text!
        let strength = strengthTextField.text!
        let attainment = attainmentPicker.selectedRow(inComponent: 0)
        let whichSegment = enjoymentLevelSelector.selectedSegmentIndex
        let enjoyment = enjoymentLevelSelector.titleForSegment(at: whichSegment)
        if  weakness.count > 0 {
            if  strength.count > 0 {
                let input = StudentEvaluation(enjoyment!, weakness, strength, attainment)
                let comment = commentGenerator.generateComment(input: input, subject: subject)
                weaknessTextField.backgroundColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
                strengthTextField.backgroundColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
                
                
                guard let vc = storyboard?.instantiateViewController(identifier: "CommentViewerViewController", creator: { coder in
                    return CommentViewerViewController(coder: coder, comment: comment
                )})else { fatalError("OOF") }
                navigationController?.pushViewController(vc, animated: true)
            } else {
                
                strengthTextField.backgroundColor = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 0.3)
                let alert = UIAlertController(title: "Generate Failed", message: "You must input your WEAKNESS AND STRENGTH", preferredStyle: .alert)
                           
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                           
                self.present(alert, animated: true)
            }
        } else {
            if strength.count < 0 {
                strengthTextField.backgroundColor = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 0.3)
            }
            weaknessTextField.backgroundColor = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 0.3)
            
            let alert = UIAlertController(title: "Generate Failed", message: "You must input your WEAKNESS AND STRENGTH", preferredStyle: .alert)
                       
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                       
            self.present(alert, animated: true)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
    }
   
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return attainmentArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return attainmentArray[row]
        
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
