//
//  ListingItemView.swift
//  Airbnb Clone
//
//  Created by Fenuku kekeli on 10/20/23.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
   
    var body: some View {
       
        VStack(spacing: 8){
            
            
            ListingImageCarouselView(listing: listing)
            .frame (height: 320)
            .clipShape (RoundedRectangle (cornerRadius: 10))
           
            
            
            HStack(alignment: .top){
                // details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                Text ("12 mi away")
                        .foregroundStyle(.gray)
                Text ("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("S\(listing.pricePerNight)")
                            .fontWeight (.semibold)
                        Text ("night")
                            .foregroundStyle(.black)
                    }
                    . foregroundStyle(.black)
                }
                Spacer()
                // rating
                HStack(spacing: 2) {
                    Image (systemName: "star.fill")
               
                    Text("\(listing.rating)")
                }
                . foregroundStyle(.black)
            }
            .font(.footnote)
        }
    
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
