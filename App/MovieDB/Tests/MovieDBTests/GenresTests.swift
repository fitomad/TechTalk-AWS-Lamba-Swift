import XCTest
@testable import MovieDB

final class GenresTests: XCTestCase {
    private let client = MovieDB(apiKey: "ae18023495231d6c234fd8f8ba1e2eb0")
    
    func testMovieGenres() async {
        do {
            let genres = try await client.genres(for: .movie)
            print(genres)
            
            XCTAssertFalse(genres.isEmpty)
        } catch let error {
            print(error)
            XCTFail(error.localizedDescription)
        }
    }
    
    func testTVGenres() async {
        do {
            let genres = try await client.genres(for: .tv)
            print(genres)
            
            XCTAssertFalse(genres.isEmpty)
        } catch let error {
            print(error)
            XCTFail(error.localizedDescription)
        }
    }
}
