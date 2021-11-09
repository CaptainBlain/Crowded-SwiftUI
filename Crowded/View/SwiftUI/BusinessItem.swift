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
        
        NavigationLink(destination: BusinessDetailSwiftUIView(businessId: business.id)) {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top), content: {
 
                GeometryReader { geometry in
                    VStack(alignment: .leading, spacing: 0) {
                        RemoteImage(url: business.images.logo)
                            .scaledToFit()
                            .frame(width: geometry.size.width, height: geometry.size.width)
                            .frame(maxHeight: 200)
                            .cornerRadius(12) // Inner corner radius
                            .padding(1) // Width of the border
                            .background(Color(business.settings.getBackgroundColour()))
                            .cornerRadius(12) // Outer corner radius
                        
                        Text(business.businessName)
                            .font(.custom("HelveticaNeue", size: 15.0))
                            .minimumScaleFactor(10)
                            .foregroundColor(.init(#colorLiteral(red: 0.02022366143, green: 0.03400618655, blue: 0.02071806246, alpha: 1)))
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                            .autocapitalization(.words)
                        Text(business.tagString)
                            .font(.custom("HelveticaNeue", size: 12.0))
                            .foregroundColor(.init(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .padding(EdgeInsets(top: 4, leading: 0, bottom: 0, trailing: 0))
                            .autocapitalization(.words)
                        
                    }
                }
            })
            .padding(EdgeInsets(top: 0, leading: 3, bottom: 0, trailing: 3))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 250)
        }
    }
}

struct BusinessItem_Previews: PreviewProvider {
    static var previews: some View {
        BusinessItem(business: MockBusiness.getLokiWine())
    }
}


