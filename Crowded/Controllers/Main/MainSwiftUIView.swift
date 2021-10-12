//
//  MainViewControllerSwiftUI.swift
//  Crowded
//
//  Created by Blain Ellis on 07/10/2021.
//

import SwiftUI

struct MainSwiftUIView: View {
    
    @ObservedObject var viewModel = BusinessViewModel()
    
    var body: some View {
        
        let businesses = viewModel.businesses
   
            ScrollView {
                MainViewHeader()
                
                LazyVGrid(columns: [GridItem(.flexible())], alignment: .center, spacing: 6) {
                    
                    let business = businesses[0]
                    RemoteImage(url: business.images.logo)
                        .scaledToFit()
                        .frame(maxHeight: 300)
                        .cornerRadius(12) //Inner Corner radiuus
                        .background(Color(business.settings.getBackgroundColour()))
                        .cornerRadius(12) // Outer corner radius
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 6) {
                        ForEach((1...businesses.count - 1), id: \.self) {
                            BusinessItem(business: businesses[$0])
                        }
                    }
                    .frame(minHeight: 0, maxHeight: .infinity, alignment: .top)
                }
            }.padding(.all, 10)

    }
}

struct MainViewControllerSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        MainSwiftUIView()
    }
}

