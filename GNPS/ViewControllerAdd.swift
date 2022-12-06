//
//  ViewControllerAdd.swift
//  GNPS
//
//  Created by SAMANTHA SPRAGUE on 12/1/22.
//

import UIKit

class ViewControllerAdd: UIViewController {
    
    
    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var gradeOutlet: UISegmentedControl!
    
    @IBOutlet weak var bOutlet: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    
    
    
    @IBAction func addAction(_ sender: UIButton) {
        AppData.saxList.append(Saxes(gnps: 1, grade: 2, name: "No", band: .Concert))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
