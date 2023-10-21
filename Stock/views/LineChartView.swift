//
//  LineChartView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct LineChartView: View {
    
    let values: [Double]
    let labels: [String]
    let screenWidth: Double

    private var path: Path {
        if self.values.isEmpty {
            return Path()
        }
        var offsetX: Double = (self.screenWidth / CGFloat(self.values.count))
        var path = Path()
        path.move(to: CGPoint(x: offsetX, y: self.values[0] / 5))
        
        for value in self.values {
            offsetX += Double(self.screenWidth / Double(self.values.count))
            path.addLine(to: CGPoint(x: offsetX, y: value / 5))
        }
        return path
    }
    
    var body: some View {
        VStack {
        
            self.path
                .stroke(.green, lineWidth: 2.0)
                .rotationEffect(.degrees(180), anchor: .center)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
            
            HStack {
                
                ForEach(self.labels, id: \.self) { label in
                    Text(label)
                        .frame(width: self.screenWidth / CGFloat(self.labels.count) - 10)
                } //: ForEach
                
            } //: HStack
            
        } //: VStack
        .frame(maxWidth: self.screenWidth)
    }
    
}

#Preview {
    LineChartView(
        values: Constants.getGraphValues(),
        labels: Constants.getYearlyLabels(),
        screenWidth: 800
    )
}
