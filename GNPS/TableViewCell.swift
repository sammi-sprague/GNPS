//
//  TableViewCell.swift
//  GNPS
//
//  Created by SAMANTHA SPRAGUE on 12/1/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var yearOutlet: UILabel!
    @IBOutlet weak var nameOutlet: UILabel!
    
    @IBOutlet weak var bandOutlet: UILabel!
    @IBOutlet weak var pointsOutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(sax: Saxes){
        yearOutlet.text = "\(sax.grade)"
        nameOutlet.text = sax.name
        pointsOutlet.text = "\(sax.gnps)"
        bandOutlet.text = "\(sax.b)"
    }

}
