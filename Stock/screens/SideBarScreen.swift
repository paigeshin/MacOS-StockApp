//
//  SideBarScreen.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct SideBarScreen: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack(alignment: .leading) {
            StockListScreen(vm: StockListViewModel(appState: self.appState))
        } //: VStack
    }
}

#Preview {
    SideBarScreen()
        .environmentObject(AppState())
}
