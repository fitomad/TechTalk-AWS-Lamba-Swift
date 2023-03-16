//
//  DefaultPopularDocumentaryListUseCase.swift
//  GlobantPlus
//
//  Created by Adolfo Vera Blasco on 16/3/23.
//

import Foundation

final class DefaultPopularDocumentaryListUseCase: PopularDocumentaryListUseCase {
    let popularDocumentaryListRepository: PopularDocumentaryListRepository = TMDBPopularDocumentaryListRepository()
    
    func fetchPopularDocumentaries() async throws -> [TrendingItem] {
        return try await popularDocumentaryListRepository.fetchPopularDocumentaries()
    }
}
