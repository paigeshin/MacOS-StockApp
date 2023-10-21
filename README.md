### Add Search Functionality on MacOS App SideBar

```swift
struct StockListScreen: View {
    
    @StateObject var vm: StockListViewModel
    
    @State private var search = ""
    
    init(vm: StockListViewModel) {
        self._vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        VStack {
            StockListView(stocks: self.vm.stocks)
                .searchable(text: self.$search, placement: .sidebar)
        } //: VStack
        .task {
            await self.vm.getStocks()
        }
    } //: body
}

```

### Enable Network Request on MacOS App 

- Check Outgoing Connections 

![image](./network.png)


### Great Way To Display Double

```swift
"\(self.stock.price, specifier: "%.2f")"
```

### Hint For Search

```swift
self.vm.stocks.filter { $0.symbol.starts(with: self.search.uppercased()) }
```

### Secret Behind Realtime Updates

- Simply Use `Timer`

### News API

https://newsapi.org/


