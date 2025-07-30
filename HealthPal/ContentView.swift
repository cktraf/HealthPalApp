//
//  ContentView.swift
//  HealthPal
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI
struct ContentView: View {
    @Binding var name : String
    
  var body: some View {
      TabView {
          MentalHealthView()
              .tabItem {
                  Label("Mental Log", systemImage: "brain.fill")
              }

          PhysicalHealthView(name: $name)
              .tabItem {
                  Label("Physical Log", systemImage: "figure.run")
              }
          NewsView()
              .tabItem {
                  Label("Articles", systemImage: "newspaper.fill")
              }
      }//tab view
      .navigationBarBackButtonHidden(true)
  }//body
}//struct

#Preview {
    @Previewable @State var name = ""
    ContentView(name: $name)
}
