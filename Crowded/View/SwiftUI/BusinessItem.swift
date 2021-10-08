//
//  BusinessCardItem.swift
//  Crowded
//
//  Created by Blain Ellis on 07/10/2021.
//

import SwiftUI

struct BusinessItem: View {
    
    var business: Business
    
    var body: some View {
        NavigationLink(destination: BusinessDetailView()) {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
                RoundedRectangle(cornerRadius: 2)
                    .foregroundColor(.init("cellBackgroundColor"))
                    .shadow(color: .init(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.2)), radius: 2, x: 0, y: 0)
                GeometryReader { geometry in
                    VStack(alignment: .leading, spacing: 10) {
                        RemoteImage(url: business.images.logo)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geometry.size.width * 0.5, height: 100)
                            .cornerRadius(4)
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
                            .background(Color.black)
                        Text(business.businessName)
                            .font(.custom("HelveticaNeue", size: 14.0))
                            .minimumScaleFactor(0.01)
                            .foregroundColor(.init(#colorLiteral(red: 0.02022366143, green: 0.03400618655, blue: 0.02071806246, alpha: 1)))
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 1, trailing: 0))
                        Text(business.tagString)
                            .font(.custom("HelveticaNeue", size: 17.0))
                            .foregroundColor(.init(#colorLiteral(red: 0.02022366143, green: 0.03400618655, blue: 0.02071806246, alpha: 1)))
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 30, trailing: 10))
                        
                    }
                }
            }).padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
    }
}

struct BusinessItem_Previews: PreviewProvider {
    static var previews: some View {
        BusinessItem(business: b)
    }
}

private let b = Business(businessName: "Loki Wine Merchant & Tasting House", businessDesc: "Loki takes the existing mindset of wine as something that we consume, and shifts it to one of something we appreciate. It’s a journey, not a commodity. \nAt Loki we like to lay it all out in front of you and give you a choice. Hopefully, you’ll come away with an understanding about why wine tastes the way it does, and that understanding will grow and grow.", businessAddress: address, openingTimes: openingTimes, contact: contact, images: images, tags: ["Wine", "Wine Tasting"], settings: settings, featured: false)
private let address = Address(number: "36", name: "", street: "Great Western Arcade", city: "Birmingham", subLocal: "", postcode: "B2 5HU")
private let openingTimes = OpeningTimes(fullOpeningTimes: "Mo - Sa: 10:00 – 18:00\nSu: 12:00 – 18:00")
private let contact = Contact(website: "https://www.lokiwine.co.uk", email: "", phone: "0121 212 9440")
private let images = BusinessImage(logo: "https://firebasestorage.googleapis.com/v0/b/crowded-292f0.appspot.com/o/Businesses%2F2020%2Fnov%2FLoki-Logo-New-Without-Text-Black-on-Transparent.png?alt=media&token=97b3bf50-bc3e-488b-a081-e6fa55b71d46", banner: "https://firebasestorage.googleapis.com/v0/b/crowded-292f0.appspot.com/o/Businesses%2F2020%2Fnov%2FScreenshot%202020-11-26%20at%2015.51.15.png?alt=media&token=e3a9fcc5-1a85-425f-9990-ce161a608089")
private let settings = Settings(backgroundColour: "#FFFFFF")
