//
//  NewsView.swift
//  HealthPal
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct NewsView: View {
    let articleLinks: [String] = [
        //exercise articles
        "https://tinyurl.com/54j2yfhw",
        "https://tinyurl.com/2z3ztwya",
        "https://tinyurl.com/m86d2v9",
        "https://tinyurl.com/4vc4fpm5",
        "https://tinyurl.com/4s8mbyd7",
        "https://tinyurl.com/4nrbv387",
        "https://tinyurl.com/msrvnnx6",
        "https://tinyurl.com/yndjnu89",
        "https://tinyurl.com/2hm3jw3y",
        "https://tinyurl.com/y3fmhpcc",
        //anxiety and depression articles
        "https://tinyurl.com/3yj2x4jt",
        "https://tinyurl.com/4bd6ct84",
        "https://tinyurl.com/z758nkk6",
        "https://tinyurl.com/ycxwsfha",
        "https://tinyurl.com/4t87v7x5",
        "https://tinyurl.com/mwy8sbtp",
        "https://tinyurl.com/2ackcah6",
        "https://tinyurl.com/ym7earrd",
        "https://tinyurl.com/mrnapxwa",
        "https://tinyurl.com/2kh2dawu",
        //building habits and journaling articles
        "https://tinyurl.com/mr396za2",
        "https://tinyurl.com/rw7kxtz7",
        "https://tinyurl.com/mwrh64ma",
        "https://tinyurl.com/5n89szwt",
        "https://tinyurl.com/szzkdubc",
        "https://tinyurl.com/2wupasv7",
        "https://tinyurl.com/2m6kdred",
        "https://tinyurl.com/y3w2p399",
        "https://tinyurl.com/ya5euurm",
        "https://tinyurl.com/ycynj5r6",
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
