//
//  ViewController.swift
//  AbsenceRecorder
//
//  Created by Hassall, Oscar (HWTA) on 30/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {

    var divisions: [Division] = []
    var currentDate: Date = Date()
    
    var cellAccessoryType: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addData()
        updateDateDisplay()
        // iterate over ever division
        // for each division, outputs its name and the number of students in it to the console
        // for each division, ouptut each of its students name
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return divisions.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Division", for: indexPath) 
        
        let selectedDivision = divisions[indexPath.row]
        cell.textLabel?.text = selectedDivision.name
        cell.accessoryType = selectedDivision.getAbsence(for: currentDate) == nil ? .none : .checkmark
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedDivision = divisions[indexPath.row]
        
        var absence = Absence(date: currentDate)
        if let existingAbsence = selectedDivision.getAbsence(for: currentDate){
            absence = existingAbsence
        } else {
            selectedDivision.absences.append(absence)
            
        }
        
        cellAccessoryType = true
        
        

        
        guard let vc = storyboard?.instantiateViewController(identifier: "DivisionsAbsenceViewController", creator: { coder in
            return DivisionAbsenceViewController(coder: coder, division: selectedDivision, absence: absence)
        }) else {
            fatalError("Failed to load Division Absence View Controller")
        }
        
        
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let allPresent = UIContextualAction(style: .normal, title: "All Present") { action, view, completionHandler in
            let division = self.divisions[indexPath.row]
            let absence = Absence(date: self.currentDate, present: division.students)
            division.absences.append(absence)
            tableView.reloadData()
            completionHandler(true)
        }
        
        allPresent.backgroundColor = UIColor.gray
        return UISwipeActionsConfiguration(actions: [allPresent])
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
    
    func convertDivisionToJson() -> String? {
        let encoder = JSONEncoder()
        guard let encoded = try? encoder.encode(divisions) else {
            print("Unable to encode divisions into JSON")
            return nil
        }
        
        guard let json = String(data: encoded, encoding: .utf8) else {
            print("Unable to turn encoded divisions into a string")
            return nil
        }
        
        return json
        
    }
    
    func convertJsonToDivisions(json: Data) -> [Division]? {
        let decoder = JSONDecoder()
        
        guard let decoded = try? decoder.decode([Division].self, from: json) else {
            return nil
        }
        
        return decoded
        
    
    }
    
    func saveDataToFile() {
        guard let divisionsJson = convertDivisionToJson() else {
            return
        }
        
        let filePath = UserDocumentManager.getDocumentsDirectory().appendingPathComponent("divisions.txt")
        
        do {
            try divisionsJson.write(to: filePath, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Unable to save by writing a file")
        }
    }
    
    func loadDataFromFile() {
        let filePath = UserDocumentManager.getDocumentsDirectory().appendingPathComponent("divisions.txt")
        
        do {
            let json = try Data(contentsOf: filePath)
            divisions = convertJsonToDivisions(json: json) ?? []
        } catch {
            print("Failed to read from file")
            addData()
        }
    }
    
    func addData(){

        
        divisions.append(DivisionFactory.createDivision(name: "vEX-1", of: 12))
        divisions.append(DivisionFactory.createDivision(name: "vCZ-1", of: 10))
  
       
        
    }
    
    
    
}

