import Foundation

protocol DashboardUseCase {
    func fetchTrendingShows() async throws -> [TrendingItem]
    func fetchTrendingMovies() async throws -> [TrendingItem]
    func fetchPopularDocumentaries() async throws -> [TrendingItem]
}
