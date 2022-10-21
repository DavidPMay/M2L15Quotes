//
//  Quotations.swift
//  M2L15Quotes
//
//  Created by David May on 10/11/22.
//

import Foundation

class Quotation: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var picture: String
    var quotes:[String]
    var image:String
    
}
