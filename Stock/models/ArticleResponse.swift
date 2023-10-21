//
//  ArticleResponse.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

struct ArticleResponse: Decodable {
    var articles: [Article] = []
}

struct Article: Decodable {
    var title: String? = nil
    var url: String? = nil
    var urlToImage: String? = nil
    var sourceName: String? = nil
    
    enum CodingKeys: CodingKey {
        case title
        case url
        case urlToImage
        case source
    }
    
    enum SourceKeys: String, CodingKey {
        case id
        case name
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.urlToImage = try container.decodeIfPresent(String.self, forKey: .urlToImage)
//        self.sourceName = try container.decodeIfPresent(String.self, forKey: .sourceName)
        if let sourceContainer = try? container.nestedContainer(keyedBy: SourceKeys.self, forKey: .source) {
            self.sourceName = try sourceContainer.decodeIfPresent(String.self, forKey: .name)
        }
    }
    
}
