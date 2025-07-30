//
// PhysicalHealthView.swift
// HealthPal
//
// Created by Scholar on 7/29/25.
//

import SwiftUI
struct PhysicalHealthView: View {
    
    /*var activityTime : String = ""
    var activityIntensity : String = ""
    var exhaustionLevel : Int = 0
    var painLevel : Int = 0
    var motivationLevel : Int = 0*/
    
    @State private var physicalData = [0, 10, 0, 1, 2]
    
    @Binding var name : String
    
    var body: some View {
        //var physicalData = [0, 10, 0, 1, 2]
    ZStack {
        // SCREEN SETUP //
        // set background color
          Color.lightBlue
                .ignoresSafeArea(.all)
        // vstack containing each row
          VStack(alignment: .leading) {
              // welcome text, large
              Text("Welcome, \(name)!")
                  .font(.title)
                  .multilineTextAlignment(.leading)
              // description text, large
              Text("Log Activity:")
                  .font(.title)
                  .multilineTextAlignment(.leading)
                  .padding(.bottom, 10)
              
              // ACTIVITY TIME //
              // category label, medium
              Text("Activity Time (minutes):")
                  .font(.title3)
              
              // h stack containing activity time buttons
              HStack {
                  // 10 minute button, 50x50, blue background, white text
                  // rounded corners
                  Button("10") {
                      physicalData[0] = 10
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 20 minute button
                  Button("20") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 30 minute button
                  Button("30") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 40 minute button
                  Button("40") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 50 minute button
                  Button("50") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 60+ minute button
                  Button("60+") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
              }//end of h stack activity time
              // format h stack
            .padding(.bottom, 10)
              
            // ACTIVITY INTENSITY //
            Text("Activity Intensity (% of your max):")
              .font(.title3)
            // buttons for intensity
            HStack {
                  // 10 percent button
                  Button("10%") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 25 percent button
                  Button("25%") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 50 percent button
                  Button("50%") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 75 percent button
                  Button("75%") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 90 percent button
                  Button("90%") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 100 percent button
                  Button("100%") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
            }//end of h stack activity intensity
              // format stack
            .padding(.bottom, 10)
              
            // EXHAUSTION //
            Text("Exhaustion (none to high):")
              .font(.title3)
            // h stack holding exhaustion buttons
            HStack {
                  // 0 button
                  Button("0") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 1 button
                  Button("1") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 2 button
                  Button("2") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 3 button
                  Button("3") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 4 button
                  Button("4") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 5 button
                  Button("5") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
            }//h stack exhaustion
              // format h stack
            .padding(.bottom, 10)
              
            // SORENESS AND PAIN //
            Text("Soreness and/or Pain (none to lots):")
              .font(.title3)
            // h stack holding soreness buttons
            HStack {
                  // 0 button
                  Button("0") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 1 button
                  Button("1") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 2 button
                  Button("2") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 3 button
                  Button("3") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 4 button
                  Button("4") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 5 button
                  Button("5") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
            }//end of h stack soreness and pain
            .padding(.bottom, 10)
              
            // MOTIVATION //
            Text("Motivation (none to lots):")
              .font(.title3)
            // motivation h stack buttons
            HStack {
                  // 0 button
                  Button("0") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 1 button
                  Button("1") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 2 button
                  Button("2") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 3 button
                  Button("3") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 4 button
                  Button("4") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
                  
                  // 5 button
                  Button("5") {
                  }
                  .frame(width: 50, height: 50)
                  .background(Color.darkBlue)
                  .foregroundColor(Color.white)
                  .cornerRadius(7)
            }//end of h stack motivation
              
            // SUBMIT BUTTON //
            Button("Submit") {
            }
            .padding(0.0)
            .frame(width: 340, height: 70)
            .background(Color(hue: 0.633, saturation: 0.86, brightness: 0.601))
            .foregroundColor(.white)
            .cornerRadius(15)
            .padding(.top, 30)
            .padding(.bottom, 30)
              
          }// v stack
    }// z stack
  }// body
}// struct

// PAGE MECHANICS //

#Preview {
    @Previewable @State var name = ""
    PhysicalHealthView( name: $name)
}






