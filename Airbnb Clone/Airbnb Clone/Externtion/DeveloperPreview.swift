//
//  DeveloperPreview.swift
//  Airbnb Clone
//
//  Created by Fenuku kekeli on 11/3/23.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
.init(
    id: NSUUID() .uuidString,
    ownerUid: NSUUID() .uuidString,
    ownerName: "John Smith",
    ownerImageUrl:"male-profile-photo",
    numberOfBedrooms: 4,
    numberOfBathrooms: 3,
    numberOfGuests: 4,
    numberOfBeds: 4,
    pricePerNight: 567,
    latitude: 25.7850,
    longitude: -80.1936,
    imageURLs: ["listing1", "listing2", "listing3"],
    address:"124 Main St",
    city:"Miami", state:"Florida",
    title:"Miami Villa",
    rating:4.86,
    features: [.selfCheckIn, .superHost],
    amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv, ],
    type: .villa
    ),

    .init(
        id: NSUUID() .uuidString,
        ownerUid: NSUUID() .uuidString,
        ownerName: "John Smith",
        ownerImageUrl:"male-profile-photo",
        numberOfBedrooms: 4,
        numberOfBathrooms: 3,
        numberOfGuests: 4,
        numberOfBeds: 4,
        pricePerNight: 567,
        latitude: 25.7850,
        longitude: -80.1936,
        imageURLs: ["listing1", "listing2", "listing3"],
        address:"124 Main St",
        city:"losAngeles", state:"Florida",
        title:"Tema Villa",
        rating:4.86,
        features: [.selfCheckIn, .superHost],
        amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv, ],
        type: .villa
        ),


    .init(
        id: NSUUID() .uuidString,
        ownerUid: NSUUID() .uuidString,
        ownerName: "John Smith",
        ownerImageUrl:"male-profile-photo",
        numberOfBedrooms: 4,
        numberOfBathrooms: 3,
        numberOfGuests: 4,
        numberOfBeds: 4,
        pricePerNight: 567,
        latitude: 25.7850,
        longitude: -80.1936,
        imageURLs: ["listing1", "listing2", "listing3"],
        address:"124 Main St",
        city:"Accra", state:"Ghana",
        title:"Accra Villa",
        rating:4.86,
        features: [.selfCheckIn, .superHost],
        amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv, ],
        type: .villa
        ),


    .init(
        id: NSUUID() .uuidString,
        ownerUid: NSUUID() .uuidString,
        ownerName: "John Smith",
        ownerImageUrl:"male-profile-photo",
        numberOfBedrooms: 4,
        numberOfBathrooms: 3,
        numberOfGuests: 4,
        numberOfBeds: 4,
        pricePerNight: 567,
        latitude: 25.7850,
        longitude: -80.1936,
        imageURLs: ["listing1", "listing2", "listing3"],
        address:"124 Main St",
        city:"losAngeles", state:"India",
        title:"Accra Villa",
        rating:4.86,
        features: [.selfCheckIn, .superHost],
        amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv, ],
        type: .villa
        ),



]
}
