//
//  StockGraphBackgroundView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct StockGraphBackgroundView: View {
    
    let noOfRows: Int
    let noOfColumns: Int
    
    init(noOfRows: Int = 5, noOfColumns: Int = 8) {
        self.noOfRows = noOfRows
        self.noOfColumns = noOfColumns
    }
    
    var body: some View {
        VStack(spacing: 0) {
            
            ForEach(1...self.noOfRows, id: \.self) { _ in
                HStack(spacing: 0) {
                    ForEach(1...self.noOfColumns, id: \.self) { _ in
                        Spacer()
                            .padding()
                            .frame(width: 100)
                            .border(.gray)
                    } //: ForEach
                } //: HStack
                .opacity(0.2)
            } //: ForEach
             
        } //: VStack
    }
}

