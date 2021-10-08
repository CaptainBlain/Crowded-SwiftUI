//
//  BusinessViewModel.swift
//  Crowded
//
//  Created by Blain Ellis on 04/10/2021.
//

import Foundation

class BusinessViewModel: ObservableObject {
    
    //Setup data-binding
    @Published var selectedCity = ""
    @Published var businesses: [Business] = []
    
    init() {
        //Immediately fetch the businesses to make them available to the user
        fetchBusinesses(in: nil)
    }
    
    func fetchBusinesses(in city: City?) {
        //Determine the city the user has requested, if any
        let cityName = city == nil ? nil : city?.name
        //Ask the network controller to fetch the businesses
        NetworkController.shared.fetchBusinessess(in: cityName) { businesses in
            if let businesses = businesses {
                self.businesses = businesses
            }
            self.selectedCity = cityName ?? ""
        }
    }
}

