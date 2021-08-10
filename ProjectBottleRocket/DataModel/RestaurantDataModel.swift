//
//  RestaurantDataModel.swift
//  ProjectBottleRocket
//
//  Created by Froy on 8/07/21.
//

import Foundation

struct RestaurantData: Decodable {
    let restaurants: [Restaurants]
}

struct Restaurants: Decodable {
    let name: String
    let backgroundImageURL: String
    let category: String
    let contact: Contact?
    let location: Location
}

struct Contact: Decodable {
    let phone: String
    let formattedPhone: String
    let twitter: String?
}

struct Location: Decodable {
    let address: String
    let crossStreet: String?
    let lat: Double
    let lng: Double
    let postalCode: String?
    let cc: String
    let city: String
    let state: String
    let country: String
    let formattedAddress: [String]
}
