//
//  TableViewCell2.swift
//  GNPS
//
//  Created by SAMANTHA SPRAGUE on 12/6/22.
//

import UIKit

class TableViewCell2: UITableViewCell {

    
    
    @IBOutlet weak var gradeOutlet: UILabel!
    @IBOutlet weak var bandTypeOutlet: UILabel!
    
    @IBOutlet weak var pointsOutlet: UILabel!
    @IBOutlet weak var nameOutlet: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(sax: Saxes){
        gradeOutlet.text = "\(sax.grade)"
        nameOutlet.text = sax.name
        pointsOutlet.text = "\(sax.gnps)"
        bandTypeOutlet.text = "\(sax.band)"
    }

}
