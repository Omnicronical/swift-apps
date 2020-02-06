//
//  ViewController.swift
//  AbsenceRecorder
//
//  Created by Hassall, Oscar (HWTA) on 30/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var divisions: [Division] = []
    var currentDate: Date = Date()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addData()
        for division in divisions {
            print("Name: \(division.name), Student No. \(division.students.count)")
            for student in division.students {
                print(" \(student.firstName)")
            }
        }
        
        updateDateDisplay()
        // iterate over ever division
        // for each division, outputs its name and the number of students in it to the console
        // for each division, ouptut each of its students name
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return divisions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Division", for: indexPath)
        
        cell.textLabel?.text = divisions[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "DivisionsAbsenceViewController") as? DivisionAbsenceViewController else {
        fatalError("Failed to load Division Absence View Controller")
        }
        let selectedDivision = divisions[indexPath.row]
        let DivisionHasAnAbsence = selectedDivision.hasAbsence(for : currentDate)
        
        if DivisionHasAnAbsence == false {
            let newAbsence = Absence(date: currentDate)
            newAbsence.absent.append(contentsOf : selectedDivision.students)
            selectedDivision.absences.append(newAbsence)
            vc.absence = newAbsence
            vc.division = selectedDivision
        } else {
            let existingAbsence = selectedDivision.getAbsence(for : currentDate)
            vc.absence = existingAbsence
            vc.division = selectedDivision
        }
            
        
       
        
        
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func LastDay(_ sender: Any) {
        currentDate = Calendar.current.date(byAdding: .day, value: -1, to: currentDate) ?? Date()
        updateDateDisplay()
    }
    
    @IBAction func NextDay(_ sender: Any) {
        currentDate = Calendar.current.date(byAdding: .day, value: 1, to: currentDate) ?? Date()
        updateDateDisplay()
    }
    
    func updateDateDisplay() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        navigationItem.title = formatter.string(from: currentDate)
    }
    
    
    func addData(){

        
        divisions.append(DivisionFactory.createDivision(name: "vEX-1", of: 12))
        divisions.append(DivisionFactory.createDivision(name: "vCZ-1", of: 10))
  
       
        
    }
    
    
    
}

