//
//  BusinessNewsHeaderView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct BusinessNewsHeaderView: View {
    
    var onSelected: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Business News")
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("From 🍎News")
                .font(.caption2)
                .opacity(0.4)
        }) //: VStack
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(red: 0.363, green: 0.354, blue: 0.383))
        .clipShape(RoundedRectangle(cornerRadius: 6))
        .onTapGesture {
            self.onSelected()
        }
    } //: body
}

