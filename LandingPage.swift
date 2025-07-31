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
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea(.all)
                VStack {
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Welcome!")
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.top, 70)
                        .foregroundColor(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
                    TextField("What is your name?", text: $name)
                        .frame(width: 325, height: 45)
                        .padding(.horizontal)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    NavigationLink(destination: ContentView(name: $name)) {
                        Text("Enter")
                            .fontWeight(.medium)
                    }// nav link
                    .frame(width: 300, height: 50)
                    .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding()
                }//v stack
                .padding()
                .navigationBarBackButtonHidden(true)
            }//z stack
        }//nav stack
  }//body
}

#Preview {
  LandingPage()
}
