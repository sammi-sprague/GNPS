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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! TableViewCell
        cell.configure(sax: saxList[indexPath.row])
        return cell
            
        
    }
    @IBOutlet weak var tableViewOutlet: UITableView!
        
var test = 5
var test2 = 5
    var saxList = [Saxes(gnps: 1, grade: 1, name: "No", band: .Symphonic)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }
    
    
    @IBAction func sortAction(_ sender: UISegmentedControl) {
    }
    


}

