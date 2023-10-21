//
//  ArticleViewModel.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

struct ArticleViewModel: Identifiable {
    
    private let article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    let id = UUID()
    
    var title: String { self.article.title ?? "" }
    var source: String { self.article.sourceName ?? "" }
    var url: URL? {
        guard let url = self.article.url else { return nil }
        return URL(string: url)
    }
    var urlToImage: URL? {
        guard let urlToImage = self.article.urlToImage else { return nil }
        return URL(string: urlToImage)
    }
}
