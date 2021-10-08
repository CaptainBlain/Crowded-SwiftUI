//
//  MainViewControllerSwiftUI.swift
//  Crowded
//
//  Created by Blain Ellis on 07/10/2021.
//

import SwiftUI

struct MainViewControllerSwiftUI: View {
    
    @ObservedObject var viewModel = BusinessViewModel()
    
    var body: some View {
        
        let businessArray = viewModel.businesses
        
        let columns: [GridItem] =
                 Array(repeating: .init(.flexible()), count: 2)
         ScrollView {
             LazyVGrid(columns: columns) {
    
                ForEach((0...businessArray.count), id: \.self) {
                     let codepoint = $0 + 0x1f600
                     let codepointString = String(format: "%02X", codepoint)
                     Text("\(codepointString)")
                     let emoji = String(Character(UnicodeScalar(codepoint)!))
                     Text("\(emoji)")
                 }
             }.font(.largeTitle)
         }
    }
}

struct MainViewControllerSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        MainViewControllerSwiftUI()
    }
}

