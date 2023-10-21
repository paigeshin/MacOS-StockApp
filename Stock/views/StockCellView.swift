//
//  StockCellView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct StockCellView: View {
    
    let stock: StockViewModel
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 2) {
                Text(self.stock.symbol)
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                Text(self.stock.name)
                    .opacity(0.4)
            } //: VStack
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 2) {
                Text("\(self.stock.price, specifier: "%.2f")")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                
                Button {
                    
                } label: {
                    Text(self.stock.change)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .frame(maxWidth: 60)
                .background(self.changeColor(self.stock.change))
                .clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
                
            } //: VStack
            
        } //: HStack
    } //: body
    
}

