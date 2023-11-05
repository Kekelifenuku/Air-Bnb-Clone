//
//  ListingImageCarouselView.swift
//  Airbnb Clone
//
//  Created by Fenuku kekeli on 10/21/23.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listing: Listing

    var body: some View {
        TabView{
            ForEach(listing.imageURLs, id: \.self) { image in
            Image(image)
                .resizable()
                .scaledToFill()
        }
    }

        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
