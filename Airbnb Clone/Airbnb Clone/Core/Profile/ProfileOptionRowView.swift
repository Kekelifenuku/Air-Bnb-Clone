//
//  ProfileOptionRowView.swift
//  Airbnb Clone
//
//  Created by Fenuku kekeli on 11/2/23.
//

import SwiftUI

struct ProfileOptionRowView: View {
    let imageName: String
    let title: String
    var body: some View {
        VStack{
            HStack{
                Image (systemName:
                imageName)
                Text(title)
                    .font (.subheadline)
                Spacer()
                Image (systemName:
                "chevron.right")
            }
        }
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}
