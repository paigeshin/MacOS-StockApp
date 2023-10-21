//
//  WebService.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

enum NetworkError: Error {
    case invalidServerResponse
}

final class WebService {
    
    func fetchStocks() async throws -> [Stock] {
        let (data, response) =  try await URLSession.shared.data(from: Constants.Urls.allStocks)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.invalidServerResponse
        }
        let stocks = try JSONDecoder().decode([Stock].self, from: data)
        return stocks
    }
    
}
