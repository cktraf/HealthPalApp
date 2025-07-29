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
          Text("Welcome!                   How are you today?")
              .font(.title)
              .fontWeight(.medium)
              .multilineTextAlignment(.center)
              .padding(.top)
          Text("Choose your emotion:")
              .padding(.top)
          HStack{
              Button(":sob:") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button(":cry:") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button(":white_frowning_face:") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button(":neutral_face:") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button(":slightly_smiling_face:") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button(":grin:") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
              Button(":smiley:") {
                  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
              }
          }
          .padding(.top, 1.0)
          Spacer()
      }
  }
}
#Preview {
  MentalHealthView()
}
