//
//  QuotationSourceView.swift
//  M2L15Quotes
//
//  Created by David May on 10/16/22.
//

import SwiftUI

struct QuotationSourceView: View {
    
    var quoteSource: Quotation
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                Image(quoteSource.picture)
                    .resizable()
                    .padding(.bottom)
                    .scaledToFill()
                  //  .padding()
                
                Text(quoteSource.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.bottom)
                
                VStack(alignment: .leading) {
                    ForEach (quoteSource.quotes,
                             id: \.self) {quote in
                        Text("• " + quote)
                            .padding([.bottom, .trailing,.leading], 8)
                        
                    }
                }
            }
        }
        .navigationBarTitle("Quotable Quotes")
        
    }
        
}
struct QuotationSourceView_Previews: PreviewProvider {
    
    
    static var previews: some View {

        let model = QuotationModel()
        QuotationSourceView(quoteSource: model.quotes[0])
    }
}
