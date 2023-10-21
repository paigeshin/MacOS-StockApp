//
//  WebViewScreen.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct WebViewScreen: View {
    
    @EnvironmentObject private var routeState: RouteState
    let url: URL
    
    var body: some View {
        VStack {
            WebView(url: self.url)
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        Button("Back") {
                            if let route = self.routeState.pop() {
                                self.routeState.route = route
                            }
                            
                        }
                    }
                }
        }
    }
}
