//
//  NewsArticleListView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct NewsArticleListView: View {
    
    let stockArticles: [StockArticleViewModel]
    
    var body: some View {
        ForEach(self.stockArticles) { article in
            ArticlesGridView(articles: article.articles)
        } //: ForEach
    } //: body
}

#Preview {
    NewsArticleListView(stockArticles: [])
}
