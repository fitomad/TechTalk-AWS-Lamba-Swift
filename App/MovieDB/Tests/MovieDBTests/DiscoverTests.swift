//
//  DiscoverTests.swift
//  
//
//  Created by Adolfo Vera Blasco on 10/1/23.
//

import XCTest
@testable import MovieDB

final class DiscoverTests: XCTestCase {
    private let client = MovieDB(apiKey: "ae18023495231d6c234fd8f8ba1e2eb0")

    func testDiscoverMovies() async {
        do {
            let movies = try await client.discoverMovies(sortedBy: .popularity)
            print(movies)
            
            XCTAssertFalse(movies.isEmpty)
        } catch let error {
            print(error)
            XCTFail(error.localizedDescription)
        }
    }
    
    func testDiscoverShows() async {
        do {
            let shows = try await client.discoverShows(sortedBy: .popularity)
            print(shows)
            
            XCTAssertFalse(shows.isEmpty)
        } catch let error {
            print(error)
            XCTFail(error.localizedDescription)
        }
    }
}
