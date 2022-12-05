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
    var age: Int
    var name: String
    
    enum Band{
        case Symphonic, Concer
    }
    var b: Band
    
    init(gnps: Int, grade: Int, age: Int, name: String, band: Band){
        self.gnps = gnps
        self.grade = grade
        self.age = age
        self.name = name
        b = band
    }
    
    func recipt()->String{
        return("\(self.name)")
    }
    
}
