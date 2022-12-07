//
//  ViewController.swift
//  GNPS
//
//  Created by SAMANTHA SPRAGUE on 12/1/22.
//

import UIKit

class AppData{
    static var saxList = [Saxes(gnps: 1, grade: 1, name: "No", band: 1)]
    
    enum Band{
        case Symphonic, Concert
    }
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
        
var test = 5
var test2 = 5
    var saxList = [Saxes(gnps: 1, grade: 1, name: "No", band: 2)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }
    
    
    @IBAction func sortAction(_ sender: UISegmentedControl) {
    }
    


}

