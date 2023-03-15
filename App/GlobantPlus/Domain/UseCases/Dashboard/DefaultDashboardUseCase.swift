//
//  DefaultDashboardUseCase.swift
//  Premiere
//
//  Created by Adolfo Vera Blasco on 4/1/23.
//

import Foundation

final class DefaultDashboardUseCase: DashboardUseCase {
    let dashboardRepository: DashboardRepository = TMDBDashboardRepository()
    
    func fetchTrendingShows() async throws -> [TrendingItem] {
        return try await dashboardRepository.fetchTrendingShows()
    }
    
    func fetchTrendingMovies() async throws -> [TrendingItem] {
        return try await dashboardRepository.fetchTrendingMovies()
    }
    
    func fetchPopularDocumentaries() async throws -> [TrendingItem] {
        return try await dashboardRepository.fetchPopularDocumentaries()
    }
}
