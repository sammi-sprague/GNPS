//
//  Saxes.swift
//  GNPS
//
//  Created by ALEXANDER CARLSON on 12/2/22.
//

import Foundation

public class Saxes{
    
    var gnps: Int
    var grade: Int
    var name: String
    enum Band{
        case Symphonic, Concert
    }
    
    init(gnps: Int, grade: Int, name: String, band: Band){
        self.gnps = gnps
        self.grade = grade
        self.name = name
        self.Band = band
    }
    
    func recipt()->String{
        return("\(self.name)")
    }
    
}
