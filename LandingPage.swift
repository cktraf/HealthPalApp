//
// LandingPage.swift
// HealthPal
//
// Created by Scholar on 7/29/25.
//

import SwiftUI
struct LandingPage: View {
    @State private var name : String = ""
    @State private var navigateToContentView = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea(.all)
                VStack {
                    // app logo
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    // welcome text
                    Text("Welcome!")
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.top, 70)
                        .foregroundColor(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
                    // enter name text field
                    TextField("What is your name?", text: $name)
                        .frame(width: 325, height: 45)
                        .padding(.horizontal)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    // enter name button
                    /*NavigationLink(destination: ContentView(name: $name)) {
                        Text("Enter")
                            .fontWeight(.medium)
                    }// nav link
                    .frame(width: 300, height: 50)
                    .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding()*/
                    
                    // test
                    Button("Save Name") {
                        UserDefaults.standard.set(name, forKey: "userName")
                        print("Saved name:", name)
                        navigateToContentView = true  // trigger navigation
                    }
                    .frame(width: 300, height: 50)
                    .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding()
                    
                    /*Button("Load Name") {
                        if let savedName = UserDefaults.standard.string(forKey: "userName") {
                            name = savedName
                            print("Loaded name:", savedName)
                            }
                    }*/

                    NavigationLink(
                        destination: ContentView(name: $name),
                            isActive: $navigateToContentView,
                            label: {
                                EmptyView() // Hidden NavigationLink
                            }
                    )
                }//v stack
                .padding()
                .navigationBarBackButtonHidden(true)
            }//z stack
            .onAppear {
                if let savedName = UserDefaults.standard.string(forKey: "userName") {
                    name = savedName
                    print("Loaded name on appear:", savedName)
                }
            }
            .onChange(of: name) { newValue in
                UserDefaults.standard.set(newValue, forKey: "userName")
                print("Auto-saved name:", newValue)
            }
        }//nav stack
  }//body
}

#Preview {
  LandingPage()
}
