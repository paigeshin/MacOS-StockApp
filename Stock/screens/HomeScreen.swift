//
//  HomeScreen.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        NavigationView {
            SideBarScreen()
                .frame(minWidth: 300, maxWidth: 400)
            switch self.appState.route {
            case .businessArticles: NewsArticleListScreen()
            case .stockDetail(let stock): StockDetailScreen(stock: stock)
            }
        } //: NavigationView
    } //: body
}

#Preview {
    HomeScreen()
}
