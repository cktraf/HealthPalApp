//
// PhysicalHealthView.swift
// HealthPal
//
// Created by Scholar on 7/29/25.
//

import SwiftUI
struct PhysicalHealthView: View {
  var activityTime = 0
  var body: some View {
    ZStack {
      Color.pink
        .ignoresSafeArea(.all)
      VStack(alignment: .leading) {
        Text("Welcome, <name>!")
          .font(.title)
          .multilineTextAlignment(.leading)
        Text("Log Activity:")
          .font(.title)
          .multilineTextAlignment(.leading)
          .padding(.bottom, 10)
        Text("Activity Time (minutes):")
          .font(.title3)
        HStack {
          // 10 minute button
          Button("10") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 20 minute button
          Button("20") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 30 minute button
          Button("30") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 40 minute button
          Button("40") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 50 minute button
          Button("50") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 60+ minute button
          Button("60+") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
        }//h stack activity time
        .padding(.bottom, 10)
        Text("Activity Intensity (% of your max):")
          .font(.title3)
        HStack {
          // 10 percent button
          Button("10%") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 25 percent button
          Button("25%") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 50 percent button
          Button("50%") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 75 percent button
          Button("75%") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 90 percent button
          Button("90%") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 100 percent button
          Button("100%") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
        }//h stack activity intensity
        .padding(.bottom, 10)
        Text("Exhaustion (none to high):")
          .font(.title3)
        HStack {
          // 0 button
          Button("0") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 1 button
          Button("1") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 2 button
          Button("2") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 3 button
          Button("3") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 4 button
          Button("4") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 5 button
          Button("5") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
        }//h stack exhaustion
        .padding(.bottom, 10)
        Text("Soreness and/or Pain (none to lots):")
          .font(.title3)
        HStack {
          // 0 button
          Button("0") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 1 button
          Button("1") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 2 button
          Button("2") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 3 button
          Button("3") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 4 button
          Button("4") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 5 button
          Button("5") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
        }//h stack soreness and pain
        .padding(.bottom, 10)
        Text("Motivation (none to lots):")
          .font(.title3)
        HStack {
          // 0 button
          Button("0") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 1 button
          Button("1") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 2 button
          Button("2") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 3 button
          Button("3") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 4 button
          Button("4") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
          //.padding()
          // 5 button
          Button("5") {
          }
          .frame(width: 50, height: 50)
          .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
          .foregroundColor(Color.white)
          .cornerRadius(7)
        }//h stack motivation
        Button("Submit") {
        }
        .padding(0.0)
        .frame(width: 340, height: 70)
        .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
        .foregroundColor(.white)
        .cornerRadius(15)
        .padding(.top, 30)
        .padding(.bottom, 30)
      }//v stack
    }//z stack
  }//body
}//struct
#Preview {
  PhysicalHealthView()
}






