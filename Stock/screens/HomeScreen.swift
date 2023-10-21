//
//  HomeScreen.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            SideBarScreen()
                .frame(minWidth: 300, maxWidth: 400)
            Text("Heool")
        } //: NavigationView
    } //: body
}

#Preview {
    HomeScreen()
}
