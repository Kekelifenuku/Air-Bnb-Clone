//
//  ExploreService.swift
//  Airbnb Clone
//
//  Created by Fenuku kekeli on 11/4/23.
//

import Foundation

class ExploreService {
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
