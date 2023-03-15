import XCTest
@testable import MovieDB

final class MovieDBTests: XCTestCase {
    private let client = MovieDB(apiKey: "ae18023495231d6c234fd8f8ba1e2eb0")
    
    func testTrendingMovies() async {
        do {
            let movies = try await client.trendingMovies()
            print(movies)
            XCTAssertFalse(movies.isEmpty)
            XCTAssertEqual(movies.count, 20)
        } catch let error {
            print("🚨 \(error)")
            XCTFail(error.localizedDescription)
        }
    }
    
    func testTrendingShows() async {
        do {
            let shows = try await client.trendingShows()
            print(shows)
            XCTAssertFalse(shows.isEmpty)
            XCTAssertEqual(shows.count, 20)
        } catch let error {
            print("🚨 \(error)")
            XCTFail(error.localizedDescription)
        }
    }
}
