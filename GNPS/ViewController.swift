//
//  ViewController.swift
//  GNPS
//
//  Created by SAMANTHA SPRAGUE on 12/1/22.
//

import UIKit

class AppData{
    static var saxList = [Saxes(gnps: 1, grade: 1, name: "No", band: .Concert)]
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return saxList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! TableViewCell2
        cell.configure(sax: saxList[indexPath.row])
        return cell
            
        
    }
    @IBOutlet weak var tableViewOutlet: UITableView!
    let defaults = UserDefaults.standard
    
        

    var saxList = [Saxes(gnps: 1, grade: 11, name: "No", band: .Symphonic)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        
        if let saxList = UserDefaults.standard.data(forKey: "myList") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([Saxes].self, from: saxList) {
                AppData.saxList = decoded
            }
        }
        
    }
    
    
    @IBAction func saveAction(_ sender: Any) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(AppData.saxList) {
            UserDefaults.standard.set(encoded, forKey: "myList")
        }
    }
    
    @IBAction func sortAction(_ sender: UISegmentedControl) {
    }
    


}

