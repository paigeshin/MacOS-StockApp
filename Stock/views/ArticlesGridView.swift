//
//  ArticlesGridView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct ArticlesGridView: View {
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    let articles: [ArticleViewModel]
    
    var body: some View {
        LazyVGrid(columns: self.columns, content: {
            ForEach(self.articles) { article in
                ArticleCellView(article: article)
            } //: ForEach
        }) //: LazyVGrid
    } //: body
}

#Preview {
    ArticlesGridView(articles: [])
}
