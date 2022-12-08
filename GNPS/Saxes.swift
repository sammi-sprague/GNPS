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
    var band: String
    
    init(gnps: Int, grade: Int, name: String, band: Int){
        self.gnps = gnps
        self.grade = grade
        self.name = name
        if band == 0{
            self.band = "Concert"
        }else{
            self.band = "Symphonic"
        }
        
    }
    func recipt()->String{
        return("\(self.name)")
    }
}
