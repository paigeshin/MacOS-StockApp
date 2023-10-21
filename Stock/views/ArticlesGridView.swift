//
//  ArticlesGridView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct ArticlesGridView: View {
    
    @EnvironmentObject private var stocksState: StocksState
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    let articles: [ArticleViewModel]
    let onSelected: (ArticleViewModel) -> Void
    
    var body: some View {
        LazyVGrid(columns: self.columns, content: {
            ForEach(self.articles) { article in
                ArticleCellView(
                    article: article,
                    onSelected: { article in
                        self.onSelected(article)
                    }
                )
            } //: ForEach
        }) //: LazyVGrid
    } //: body
}

