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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BusinessDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessDetailSwiftUIView(businessId: 0)
    }
}
