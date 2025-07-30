//
//  NewsView.swift
//  HealthPal
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct NewsView: View {
    let articleLinks: [String] = [
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
        "https://www.google.com",
    ]

    var body: some View {
        ZStack {
            Color(red: 185/255, green: 230/255, blue: 255/255)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(red: 0.0/255, green: 74.0/255, blue: 173.0/255))
                            .frame(width: 380, height: 60)
                        Text("Explore articles related to your current mood:")
                            .foregroundColor(.white)
                            .font(.custom("TimesNewRomanPSMT", size: 20))
                    }
                    .padding(.top, 20)

                    ForEach(0..<articleLinks.count, id: \.self) { index in
                        if let url = URL(string: articleLinks[index]) {
                            Link(destination: url) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color(red: 56/255, green: 182/255, blue: 255/255))
                                        .frame(width: 350, height: 80)
                                    Text("Article link \(index + 1)")
                                        .underline()
                                        .foregroundColor(.white)
                                        .font(.custom("TimesNewRomanPSMT", size: 20))
                                }
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, 40)
            }
        }
    }
}

#Preview {
    NewsView()
}
