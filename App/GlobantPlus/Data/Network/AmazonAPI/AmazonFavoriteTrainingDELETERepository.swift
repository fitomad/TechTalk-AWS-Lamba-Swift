//
//  AmazonFavoriteTrainningDELETERepository.swift
//  GlobantPlus
//
//  Created by Adolfo Vera Blasco on 15/3/23.
//

import Foundation
import Resty

final class AmazonFavoriteTrainingDELETERepository: FavoriteTrainingDELETERepository {
    private let resty = Resty()
    
    func delete(mediaID: Int, forUser userID: String) async throws {
        let amazonFavorite = AmazonFavorite(media: mediaID, user: userID)
        
        let favoriteRequest = NetworkRequest(
            httpHeaders: [ "Content-Type" : "application/json" ],
            body: amazonFavorite.encoded(),
            httpMethod: .delete)
        
        let favoriteResponse = try await resty.fetch(endpoint: AmazonFavoriteEndpoint.favorite, withParameters: favoriteRequest)
        
        if favoriteResponse.httpCodeResponse != 200 {
            throw GlobantPlusError.dataSourceFailure
        }
    }
}
