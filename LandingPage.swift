//
// LandingPage.swift
// HealthPal
//
// Created by Scholar on 7/29/25.
//

import SwiftUI
struct LandingPage: View {
    @State private var name : String = ""
  var body: some View {
    NavigationStack {
      VStack {
        Text("Welcome to Health Pal! What is your name?")
          .font(.title2)
          .multilineTextAlignment(.center)
          TextField("Enter name:", text: $name)
          .padding(.horizontal)
          .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
          NavigationLink(destination: ContentView(name: $name)) {
          Text("Go to app")
        }
      }
      .padding()
    }
    .navigationBarBackButtonHidden(true)
  }//body
}

#Preview {
  LandingPage()
}
