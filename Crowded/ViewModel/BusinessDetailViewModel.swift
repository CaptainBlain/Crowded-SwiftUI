//
//  BusinessDetailViewModel.swift
//  Crowded
//
//  Created by Blain Ellis on 09/11/2021.
//

import Foundation

class BusinessDetailViewModel: ObservableObject {
    
    //Setup data-binding
    @Published var business: Business!
    
    init(businessId: Int) {
        //Immediately fetch the businesses to make them available to the user
        self.fetchBusiness(forBusinessId: businessId)
    }
    
    func fetchBusiness(forBusinessId id: Int) {
   
        //Ask the network controller to fetch the businesses
        NetworkController.shared.fetchBusiness(forBusinessId: id) { business in
            if let business = business {
                self.business = business
            }
        }
    }
}
