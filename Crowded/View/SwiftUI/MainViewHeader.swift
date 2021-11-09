//
//  MainViewHeader.swift
//  Crowded
//
//  Created by Blain Ellis on 12/10/2021.
//

import SwiftUI

struct MainViewHeader: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Find independant retailers in:")
                    .font(.body.italic())
                    .padding(.bottom, 1)
                
                Button("Select a city", action: {
                    showingSheet.toggle()
                })
                .font(Font.helveticaBold(size: 26.0))
                .foregroundColor(Color("textFieldPlaceholder"))
                .sheet(isPresented: $showingSheet) {
                    CitySelectSwiftUIView()
                }
            }
            .frame(maxWidth: .infinity,
                   alignment: .leading)
            .padding(.all, 10)
            
            Button(action: {
                showingSheet.toggle()
            })
            {
                Image("gear-icon")
                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
            }
            .sheet(isPresented: $showingSheet) {
                SettingsSwiftUIView()
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 6))
            
        }
        
    }
}
/*
 Button("Show Sheet") {
     showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
         CitySelectSwiftUIView()
        }
 
 Button("Select a city") {
 }
 .font(Font.helveticaBold(size: 26.0))
 .foregroundColor(Color("textFieldPlaceholder"))*/

struct MainViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        MainViewHeader()
    }
}
