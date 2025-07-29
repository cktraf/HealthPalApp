//
// MentalHealthView.swift
// HealthPal
//
// Created by Scholar on 7/29/25.
//
import SwiftUI
struct MentalHealthView: View {
  var body: some View {
      VStack {
          Text("Welcome!                                        How are you today?")
              .font(.title)
              .fontWeight(.medium)
              .multilineTextAlignment(.center)
              .padding(.top)
            
          Text("Choose your emotion:")
              .padding(.top)
          HStack{
              Button("😭") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button("😢") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button("☹️") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button("😐") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button("🙂") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button("😁") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button("😃") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
          }
          .padding(.top, 1.0)
          
          Text("Need a mental health break?")
              .font(.title2)
              .fontWeight(.regular)
              .padding(.top)
          List {
              Text("Read a Book 📖")
              Text("Meditate 🧘")
              Text("Journal 📝")
          }
          
          
      }//vstack
          
          
  }
}
#Preview {
  MentalHealthView()
}
