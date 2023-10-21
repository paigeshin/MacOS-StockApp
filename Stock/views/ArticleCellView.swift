//
//  ArticleCellView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct ArticleCellView: View {
    
    let article: ArticleViewModel
    let onSelected: (ArticleViewModel) -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            AsyncImage(url: self.article.urlToImage) { image in
                image
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            } placeholder: {
                Image("placeholder")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 200)
            }
            
            Text(self.article.source)
            Text(self.article.title)
                .font(.title)
                .fontWeight(.bold)
        } //: VStack
        .onTapGesture {
            self.onSelected(self.article)
        }
    } //: body
}

