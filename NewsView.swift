//
//  NewsView.swift
//  HealthPal
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct NewsView: View {
    struct Article: Identifiable {
        let id = UUID()
        let title: String
        let url: String
    }

    enum Category: String, CaseIterable, Identifiable {
        case exercise = "Exercise/Health"
        case anxiety = "Anxiety"
        case habits = "Habits/Journaling"
        var id: String { self.rawValue }
    }

    @State private var selectedCategory: Category = .exercise
    let articleLinks: [Category: [Article]] = [
        .exercise: [
            Article(title: "SecondsCount Exercise", url: "https://tinyurl.com/54j2yfhw"),
            Article(title: "10 Benefits of Regular Exercise", url: "https://tinyurl.com/2z3ztwya"),
            Article(title: "Health Benefits of Exercise", url: "https://tinyurl.com/m86d2v9"),
            Article(title: "Easing Symptons of Depression", url: "https://tinyurl.com/4vc4fpm5"),
            Article(title: "Benefits of Physical Activity", url: "https://tinyurl.com/4s8mbyd7"),
            Article(title: "Healthy Lifestyle: Fitness", url: "https://tinyurl.com/4nrbv387"),
            Article(title: "Best Types of Exercise for Mental Health", url: "https://tinyurl.com/msrvnnx6"),
            Article(title: "Improving Mental Health with Exercise", url: "https://tinyurl.com/yndjnu89"),
            Article(title: "Health F.i.T tips", url: "https://tinyurl.com/2hm3jw3y"),
            Article(title: "How to Measure Exercise Intensity", url: "https://tinyurl.com/y3fmhpcc")
        ],
        .anxiety: [
            Article(title: "The Relationship between Depression and Anxiety", url: "https://tinyurl.com/3yj2x4jt"),
            Article(title: "How to Identify and Treat Symptoms", url: "https://tinyurl.com/4bd6ct84"),
            Article(title: "Coping with Depression", url: "https://tinyurl.com/z758nkk6"),
            Article(title: "Understanding Depression: APA", url: "https://tinyurl.com/ycxwsfha"),
            Article(title: "How Exercise can Combat Depression", url: "https://tinyurl.com/4t87v7x5"),
            Article(title: "Tips for Coping with Anxiety Disorder", url: "https://tinyurl.com/mwy8sbtp"),
            Article(title: "Common Causes of Anxiety", url: "https://tinyurl.com/2ackcah6"),
            Article(title: "How to Recognize Anxiety Triggers", url: "https://tinyurl.com/ym7earrd"),
            Article(title: "Helping Overcome Anxiety", url: "https://tinyurl.com/mrnapxwa"),
            Article(title: "Guides for Stress", url: "https://tinyurl.com/2kh2dawu")
        ],
        .habits: [
            Article(title: "The Power of Goal Setting", url: "https://tinyurl.com/mr396za2"),
            Article(title: "Journaling for Wellness", url: "https://tinyurl.com/5brex2dr"),
            Article(title: "Building Healthy Habits that Stay", url: "https://tinyurl.com/mwrh64ma"),
            Article(title: "Journaling for Emotional Wellness", url: "https://tinyurl.com/5n89szwt"),
            Article(title: "Tips for Journaling for Mental Health", url: "https://tinyurl.com/szzkdubc"),
            Article(title: "Building Habits When You're Exhausted", url: "https://tinyurl.com/2wupasv7"),
            Article(title: "Creating Practice Habits", url: "https://tinyurl.com/yenuarst"),
            Article(title: "The Power of Routine", url: "https://tinyurl.com/y3w2p399"),
            Article(title: "Why Our Brains Love Routine", url: "https://tinyurl.com/ya5euurm"),
            Article(title: "Mental Health Habits to Boost Well-Being", url: "https://tinyurl.com/ycynj5r6")
        ]
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

                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue).tag(category)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal)

                    if let articles = articleLinks[selectedCategory] {
                        ForEach(articles) { article in
                            if let url = URL(string: article.url) {
                                Link(destination: url) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color(red: 56/255, green: 182/255, blue: 255/255))
                                            .frame(width: 350, height: 80)
                                        Text(article.title)
                                            .underline()
                                            .foregroundColor(.white)
                                            .font(.custom("TimesNewRomanPSMT", size: 20))
                                    }
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
