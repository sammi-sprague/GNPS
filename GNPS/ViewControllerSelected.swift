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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameOutlet.text = AppData.sax.name
        sammisLabel.text = "\(AppData.sax.grade)th grade \n\(AppData.sax.band) Band"
        pointsOutlet.text = "\(AppData.sax.gnps)"
    }
    

    
    @IBAction func addPointsAction(_ sender: UIStepper) {
        if sender.value == 0{
            AppData.sax.gnps -= 1
        }else{
            AppData.sax.gnps += 1
        }
        
        
        pointsOutlet.text = "\(AppData.sax.gnps)"
        
    }
    
}
