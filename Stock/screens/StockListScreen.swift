//
//  StockListscreen.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct StockListScreen: View {
    
    @StateObject var vm: StockListViewModel
    
    @State private var search = ""
    private let timer = Timer.publish(every: 5.0, on: .main, in: .default).autoconnect()
    private var stocks: [StockViewModel] {
        if !self.search.isEmpty {
            return self.vm.stocks.filter { $0.symbol.starts(with: self.search.uppercased()) }
        }
        return self.vm.stocks
    }
    
    init(vm: StockListViewModel) {
        self._vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        VStack {
            StockListView(stocks: self.stocks)
                .searchable(text: self.$search, placement: .sidebar)
        } //: VStack
        .task {
            await self.vm.getStocks()
        }
        .onReceive(self.timer, perform: { _ in
            Task {
                await self.vm.getStocks()
            }
        })
    } //: body
}

#Preview {
    StockListScreen(vm: StockListViewModel(appState: AppState()))
}
