//
//  Constants.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

struct Constants {
    
    static let apiKey = "d0b5eef18c6d410885c9fb12c1615fb0"
    
    struct Urls {
        static let allStocks = URL(string: "https://island-bramble.glitch.me/latest-stocks")!
        static let businessArticles = URL(string: "https://newsapi.org/v2/everything?q=tesla&sortBy=publishedAt&apiKey=\(Constants.apiKey)")!
        static func articlesBy(stock: Stock) -> URL {
            return URL(string: "https://newsapi.org/v2/everything?q=\(stock.description)&sortBy=publishedAt&apiKey=\(Constants.apiKey)")!
        }
    }
    
    static func getYearlyLabels() -> [String] {
        (2015...2021).map { String($0) }
    }
    
    static func getGraphValues() -> [Double] {
        var randoms: [Double] = []
        for _ in 0...200 {
            let random = Double.random(in: 100...200)
            randoms.append(random)
        }
        return randoms
    }
    
}
