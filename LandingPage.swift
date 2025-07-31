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
        ZStack {
            Color.lightBlue
                .ignoresSafeArea(.all)
            VStack {
                Image("Logo")
                    
                Text("Welcome!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                TextField("What is your name?", text: $name)
                    .padding(.horizontal)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                NavigationLink(destination: ContentView(name: $name)) {
                    Text("Enter")
                        .fontWeight(.medium)
                    }// nav link
                .frame(width: 300, height: 50)
                .background(Color.darkBlue)
                .foregroundColor(.white)
                .cornerRadius(20)
            }//v stack
            .padding()
            .navigationBarBackButtonHidden(true)
      }//z stack
  }//body
}

#Preview {
  LandingPage()
}
