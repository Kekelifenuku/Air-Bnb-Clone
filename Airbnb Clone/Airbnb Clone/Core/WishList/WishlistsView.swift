//
//  WishlistsView.swift
//  Airbnb Clone
//
//  Created by Fenuku kekeli on 11/2/23.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment:
                    .leading,
                   spacing: 32) {
                VStack(alignment: .leading, spacing: 4){
                    
                    
                    Text ("Log in to view your wishlists")
                        .font (.headline)
                    
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font (.footnote)
                    
                }
                Button {
                    print("log in")
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font (.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.red)
                        .clipShape (RoundedRectangle (cornerRadius: 8))
                }
                Spacer()
            }
                   .padding()
                   .navigationTitle("Wishlist")
        }
    }
}

#Preview {
    WishlistsView()
}
