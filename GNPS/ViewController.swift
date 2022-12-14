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
        //print("appear")
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
        AppData.sax = AppData.saxList[indexPath.row]
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
        print("Deleted")

          AppData.saxList.remove(at: indexPath.row)
          self.tableViewOutlet.deleteRows(at: [indexPath], with: .automatic)
      }
    }
    
    
    
    
    
    @IBAction func sortAction(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0{
            AppData.saxList = AppData.saxList.sorted(by: { $0.gnps > $1.gnps })
        }else if sender.selectedSegmentIndex == 1{
            AppData.saxList = AppData.saxList.sorted(by: { $0.name < $1.name })
        }else if sender.selectedSegmentIndex == 2{
            AppData.saxList = AppData.saxList.sorted(by: { $0.band > $1.band })
        }else{
            AppData.saxList = AppData.saxList.sorted(by: { $0.grade > $1.grade })
        }
        
        tableViewOutlet.reloadData()
        
    }
    
    @IBAction func addYearAction(_ sender: Any) {
        
        var i = 0
        while i < AppData.saxList.count{
            if AppData.saxList[i].grade == 12{
                AppData.saxList.remove(at: i)
                i -= 1
            }else{
                AppData.saxList[i].grade += 1
            }
            i+=1
        }
        tableViewOutlet.reloadData()
        
        
        
        
    }
    

}

