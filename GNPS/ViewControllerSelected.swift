//
//  ViewControllerSelected.swift
//  GNPS
//
//  Created by SAMANTHA SPRAGUE on 12/1/22.
//

import UIKit

class ViewControllerSelected: UIViewController {

    //var sax: Saxes!
    
    @IBOutlet weak var nameOutlet: UILabel!
    
    @IBOutlet weak var sammisLabel: UILabel!

    @IBOutlet weak var pointsOutlet: UILabel!
    
    @IBOutlet weak var changeBandOutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameOutlet.text = AppData.sax.name
        sammisLabel.text = "\(AppData.sax.grade)th grade \n\(AppData.sax.band) Band"
        pointsOutlet.text = "\(AppData.sax.gnps)"
    }
    

    
  
    
    
    @IBAction func addAction(_ sender: Any) {
        AppData.sax.gnps += 1
        pointsOutlet.text = "\(AppData.sax.gnps)"
        
    }
    
    @IBAction func removeAction(_ sender: Any) {
        AppData.sax.gnps -= 1
        pointsOutlet.text = "\(AppData.sax.gnps)"
    }
    
    @IBAction func changeBandAction(_ sender: UISegmentedControl) {
        print("yes")
        if sender.selectedSegmentIndex == 0{
            AppData.sax.band = "Concert"
        }else{
            AppData.sax.band = "Symphonic"
        }
    }
    
    @IBAction func changeAction(_ sender: Any) {
        
    }
}
