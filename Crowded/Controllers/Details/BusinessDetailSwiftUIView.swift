//
//  BusinessDetailView.swift
//  Crowded
//
//  Created by Blain Ellis on 07/10/2021.
//

import SwiftUI

struct BusinessDetailSwiftUIView: View {
    
    var viewModel: BusinessDetailViewModel!
    
    init(businessId: Int) {
        viewModel = BusinessDetailViewModel(businessId: businessId)
    }
    var body: some View {
        
        let business = viewModel.business!
        
        ScrollView {

            ZStack(alignment: .bottom) {
                
                RemoteImage(url: business.images.banner)
                    .frame(height: 300)
                    .cornerRadius(0) //Inner Corner radiuus
                    .background(Color(business.settings.getBackgroundColour()))

                RemoteImage(url: business.images.logo)
                    .scaledToFit()
                    .frame(width: 125, height: 125, alignment: .center)
                    .cornerRadius(12) // Inner corner radius
                    .padding(1) // Width of the border
                    .background(Color(business.settings.getBackgroundColour()))
                    .cornerRadius(12)
                    .offset(x: 0, y: 60)
            }
            
            VStack(alignment: .center) {
                
                Text(business.businessName)
                    .font(.custom("HelveticaNeue-Bold", size: 25.0))
                    .minimumScaleFactor(10)
                    .foregroundColor(.init(#colorLiteral(red: 0.02022366143, green: 0.03400618655, blue: 0.02071806246, alpha: 1)))
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                    .autocapitalization(.words)
                
                Text(business.tagString)
                    .font(.custom("HelveticaNeue", size: 15.0))
                    .foregroundColor(.init(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .autocapitalization(.words)
             
            }
            .padding(EdgeInsets(top: 60, leading: 0, bottom: 10, trailing: 0))
            
            VStack(alignment: .leading, spacing: 0) {
                
                Text(business.businessDesc)
                    .font(.custom("HelveticaNeue", size: 18.0))
                    .autocapitalization(.words)
            }
            .padding(EdgeInsets(top: 0, leading: 4, bottom: 20, trailing: 4))
            
            VStack(alignment: .leading, spacing: 0) {
                               
                Text(business.businessAddress.city.capitalized)
                    .font(.custom("HelveticaNeue-Bold", size: 25.0))
                    .minimumScaleFactor(10)
                    .foregroundColor(.init(#colorLiteral(red: 0.02022366143, green: 0.03400618655, blue: 0.02071806246, alpha: 1)))
                    .autocapitalization(.words)
                
                Text(business.businessAddress.addressString)
                    .font(.custom("HelveticaNeue", size: 18.0))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
                //Opening Times
                Text("Opening times")
                    .font(.custom("HelveticaNeue-Bold", size: 25.0))
                    .minimumScaleFactor(10)
                    .foregroundColor(.init(#colorLiteral(red: 0.02022366143, green: 0.03400618655, blue: 0.02071806246, alpha: 1)))
                    .autocapitalization(.words)
                
                Text(business.openingTimes.openingTimesString)
                    .font(.custom("HelveticaNeue", size: 18.0))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
                //Website
                Text("Website")
                    .font(.custom("HelveticaNeue-Bold", size: 25.0))
                    .minimumScaleFactor(10)
                    .foregroundColor(.init(#colorLiteral(red: 0.02022366143, green: 0.03400618655, blue: 0.02071806246, alpha: 1)))
                    .autocapitalization(.words)
                
                Text(business.contact.website)
                    .font(.custom("HelveticaNeue", size: 18.0))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
                //Contact
                Text("Contact")
                    .font(.custom("HelveticaNeue-Bold", size: 25.0))
                    .minimumScaleFactor(10)
                    .foregroundColor(.init(#colorLiteral(red: 0.02022366143, green: 0.03400618655, blue: 0.02071806246, alpha: 1)))
                    .autocapitalization(.words)
                
                Text(business.contact.phone)
                    .font(.custom("HelveticaNeue", size: 18.0))
                
                Text(business.contact.email)
                    .font(.custom("HelveticaNeue", size: 18.0))
            }
            .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 4))
           
        }
    }
}

struct BusinessDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessDetailSwiftUIView(businessId: 0)
    }
}

/*
 case .location:
     let cell = tableView.dequeueReusableCell(withIdentifier: BusinessLocationTableViewCell.identifier, for: indexPath) as! BusinessLocationTableViewCell
     cell.cityLabel.text = business.businessAddress.city.capitalized
     cell.addressLabel.text = business.businessAddress.addressString
     return cell
 case .times:
     let cell = tableView.dequeueReusableCell(withIdentifier: BusinessTimesTableViewCell.identifier, for: indexPath) as! BusinessTimesTableViewCell
     cell.openingTimesDetailsLabel.text = business.openingTimes.openingTimesString
     return cell
 case .website:
     let cell = tableView.dequeueReusableCell(withIdentifier: BusinessWebsiteTableViewCell.identifier, for: indexPath) as! BusinessWebsiteTableViewCell
     cell.websiteDetailsLabel.text = business.contact.website
     return cell
 case .contact:
     let cell = tableView.dequeueReusableCell(withIdentifier: BusinessContactTableViewCell.identifier, for: indexPath) as! BusinessContactTableViewCell
     cell.phoneNumberLabel.text = business.contact.phone
     cell.emailLabel.text = business.contact.email
     return cell*/
