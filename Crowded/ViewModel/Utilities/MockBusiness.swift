//
//  MockBusiness.swift
//  Crowded
//
//  Created by Blain Ellis on 09/11/2021.
//

import Foundation

class MockBusiness {
    
    static func getLokiWine() -> Business {
        
        let address = Address(number: "36", name: "", street: "Great Western Arcade", city: "Birmingham", subLocal: "", postcode: "B2 5HU")
        let openingTimes = OpeningTimes(fullOpeningTimes: "Mo - Sa: 10:00 – 18:00\nSu: 12:00 – 18:00")
        let contact = Contact(website: "https://www.lokiwine.co.uk", email: "", phone: "0121 212 9440")
        let images = BusinessImage(logo: "https://firebasestorage.googleapis.com/v0/b/crowded-292f0.appspot.com/o/Businesses%2F2020%2Fnov%2FLoki-Logo-New-Without-Text-Black-on-Transparent.png?alt=media&token=97b3bf50-bc3e-488b-a081-e6fa55b71d46", banner: "https://firebasestorage.googleapis.com/v0/b/crowded-292f0.appspot.com/o/Businesses%2F2020%2Fnov%2FScreenshot%202020-11-26%20at%2015.51.15.png?alt=media&token=e3a9fcc5-1a85-425f-9990-ce161a608089")
        let settings = Settings(backgroundColour: "#FFFFFF")
        
        return Business(id: 0, businessName: "Loki Wine Merchant & Tasting House", businessDesc: "Loki takes the existing mindset of wine as something that we consume, and shifts it to one of something we appreciate. It’s a journey, not a commodity. \nAt Loki we like to lay it all out in front of you and give you a choice. Hopefully, you’ll come away with an understanding about why wine tastes the way it does, and that understanding will grow and grow.", businessAddress: address, openingTimes: openingTimes, contact: contact, images: images, tags: ["Wine", "Wine Tasting"], settings: settings, featured: false)
        
    }
    
}
