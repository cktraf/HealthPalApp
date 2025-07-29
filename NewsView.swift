//
//  NewsView.swift
//  HealthPal
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI
struct NewsView: View {
  var body: some View {
    //delete if not working
    ScrollView {
      VStack(spacing: 20) {
        //first
        ZStack {
          Rectangle()
            .fill(Color(red: 0.0/255, green: 74.0/255, blue: 173.0/255))
            .frame(width: 380, height: 60)
            .cornerRadius(20)
          Text("Explore articles related to your current mood:")
            .foregroundColor(.white)
            .font(.custom("TimesNewRomanPSMT", size: 20))
        }
        .padding(.top, 20)
        Spacer()
        ZStack {
          Rectangle()
            .fill(Color(red: 56/255, green: 182/255, blue: 255/255))
            .frame(width: 350, height: 80)
            .cornerRadius(20)
          //text here
            .foregroundColor(.white)
            .font(.custom("TimesNewRomanPSMT", size:20))
        }
        Spacer()
        ZStack {
          Rectangle()
            .fill(Color(red: 56/255, green: 182/255, blue: 255/255))
            .frame(width: 350, height: 80)
            .cornerRadius(20)
          //text here
            .foregroundColor(.white)
            .font(.custom("TimesNewRomanPSMT", size:20))
        }
        Spacer()
        Rectangle()
          .fill(Color(red: 56/255, green: 182/255, blue: 255/255))
          .frame(width: 350, height: 80)
          .cornerRadius(20)
        Text("Article 3")
          .foregroundColor(.white)
          .font(.custom("TimesNewRomanPSMT", size:20))
      }
      Spacer()
      Rectangle()
        .fill(Color(red: 56/255, green: 182/255, blue: 255/255))
        .frame(width: 350, height: 80)
        .cornerRadius(20)
      Text("Article 4")
        .foregroundColor(.white)
        .font(.custom("TimesNewRomanPSMT", size:20))
      .frame(maxWidth: .infinity)
    }
  }
}

#Preview {
  NewsView()
}
