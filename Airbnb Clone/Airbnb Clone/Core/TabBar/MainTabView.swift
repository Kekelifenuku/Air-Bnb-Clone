//
//  MainTabView.swift
//  Airbnb Clone
//
//  Created by Fenuku kekeli on 11/2/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            WishlistsView()
                .tabItem { Label("Wishlist", systemImage: "heart") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.circle") }
        }
    }
}

#Preview {
    MainTabView()
}
