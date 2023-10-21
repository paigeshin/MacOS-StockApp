//
//  NewsArticleListView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct NewsArticleListView: View {
    
    @EnvironmentObject private var routeState: RouteState
    let stockArticles: [StockArticleViewModel]
    
    var body: some View {
        ForEach(self.stockArticles) { article in
            ArticlesGridView(articles: article.articles, onSelected: { article in
                guard let url = article.url else { return }
                self.routeState.push(.businessArticles)
                self.routeState.route = .articleDetail(url)
            })
        } //: ForEach
    } //: body
}

#Preview {
    NewsArticleListView(stockArticles: [])
}
