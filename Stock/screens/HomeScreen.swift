//
//  HomeScreen.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject private var routestate: RouteState
    
    var body: some View {
        NavigationView {
            SideBarScreen()
                .frame(minWidth: 300, maxWidth: 400)
            switch self.routestate.route {
            case .businessArticles: NewsArticleListScreen()
            case .stockDetail(let stock): StockDetailScreen(stock: stock)
            case .articleDetail(let url): WebViewScreen(url: url)
            }
        } //: NavigationView
    } //: body
}

#Preview {
    HomeScreen()
}
