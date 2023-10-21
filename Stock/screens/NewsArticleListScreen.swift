//
//  NewsArticleListScreen.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct NewsArticleListScreen: View {
    
    @StateObject private var vm = StockArticleListViewModel()
    
    var body: some View {
        ScrollView {
            Text("Top stories")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            NewsArticleListView(stockArticles: self.vm.stockArticles)
            
        } //: ScrollView
        .task {
            await self.vm.fetchArticles()
        }
    } //: body
    
}

#Preview {
    NewsArticleListScreen()
}
