//
//  QuotationModel.swift
//  M2L15Quotes
//
//  Created by David May on 10/11/22.
//

import Foundation

class QuotationModel: ObservableObject {
    @Published var quotes = [Quotation]()
    
    init() {
        //get path to json file
        
        
        self.quotes = DataService.getLocalData()
    }
    
}



