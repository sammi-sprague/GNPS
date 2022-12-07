//
//  Saxes.swift
//  GNPS
//
//  Created by ALEXANDER CARLSON on 12/2/22.
//

import Foundation

public class Saxes: Codable{
    
    var gnps: Int
    var grade: Int
    var name: String
    enum Band{
        case Symphonic, Concert
    }
    var b: Band
    
    init(gnps: Int, grade: Int, name: String, band: Band){
        self.gnps = gnps
        self.grade = grade
        self.name = name
        b = band
    }
    
    func recipt()->String{
        return("\(self.name)")
    }
    
}
