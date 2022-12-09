//
//  ViewController.swift
//  GNPS
//
//  Created by SAMANTHA SPRAGUE on 12/1/22.
//

import UIKit

class AppData{
    static var saxList = [Saxes(gnps: 1, grade: 1, name: "No", band: 0)]
    static var sax = saxList[0]
    
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    let defaults = UserDefaults.standard
    
        
    //var saxList = [Saxes(gnps: 1, grade: 1, name: "No", band: 2)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        
        if let sL = UserDefaults.standard.data(forKey: "myList") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([Saxes].self, from: sL) {
                AppData.saxList = decoded
            }
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableViewOutlet.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.saxList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! TableViewCell2
        cell.configure(sax: AppData.saxList[indexPath.row])
        return cell
            
        
    }
    
    @IBAction func saveAction(_ sender: Any) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(AppData.saxList) {
            UserDefaults.standard.set(encoded, forKey: "myList")
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toAddSegue", sender: self)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let detailsVC = segue.destination as! ViewControllerSelected
//        let selectedRow = tableViewOutlet.indexPathForSelectedRow!.row
//        detailsVC.sax = AppData.saxList[selectedRow]
//
//
//    }
    
    @IBAction func sortAction(_ sender: UISegmentedControl) {
    }
    


}

