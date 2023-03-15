import Foundation

protocol DashboardRepository {
    func fetchTrendingMovies() async throws -> [TrendingItem]
    func fetchTrendingShows() async throws -> [TrendingItem]
    func fetchPopularDocumentaries() async throws -> [TrendingItem]
}
