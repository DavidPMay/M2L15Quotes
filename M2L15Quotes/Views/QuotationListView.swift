//
//  ContentView.swift
//  M2L15Quotes
//
//  Created by David May on 10/11/22.
//

import SwiftUI

struct QuotationListView: View {
    @ObservedObject var model = QuotationModel()
   // var quote: Quotation
    var body: some View {
        
        NavigationView {
            
            List(model.quotes) { q in
                
                NavigationLink(destination: QuotationSourceView(quoteSource: q), label: {
                    
                    ZStack {
                        Image(q.image)
                            .resizable()
                            .scaledToFill()
                            
                        VStack {
                            Text(q.quotes[Int.random(in: 0 ..< q.quotes.count)]).padding()
                                .font(.title)
                                .foregroundColor(.white)
                                .bold()
                            Text("")
                            Text("- \(q.name)")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .bold()
                                
                        }
                    }
                })              
            }
            .navigationBarTitle(">>None to Serious<<")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuotationListView()
    }
}
