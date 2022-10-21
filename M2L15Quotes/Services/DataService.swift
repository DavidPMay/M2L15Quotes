//
//  DataService.swift
//  M2L15Quotes
//
//  Created by David May on 10/11/22.
//

import Foundation


class DataService {
    
    static func getLocalData() -> [Quotation] {
        
        // Parse local json file
        
        // Get a url path to the json file
        
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        //check if pathName is not nil otherwise
        
        guard pathString != nil else {
            
            return [Quotation]()
        }
        
        
        // Create a URL object
        let url = URL(filePath: pathString!)
        //let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a Data object
          
            let data = try Data(contentsOf: url)
            
            // Decode the object with a JSON decoder
            let decoder = JSONDecoder()
            
            
            do {
                
                let quoteData = try decoder.decode([Quotation].self, from: data)
                
                // Add the Unique IDs
                for q in quoteData {
                    q.id = UUID()
                }
                
                // Return the recipes
                return quoteData
                
            }
            catch {
                
                // Error with parsing json
                print(error)
                
            }
           
            
            
            
        }
        catch {
            
            // Error with getting data
            print(error)
            
        }
        
        return [Quotation]()
    }
}
