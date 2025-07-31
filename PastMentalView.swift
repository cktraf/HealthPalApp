import SwiftUI

struct PastMentalView: View {
    var entries: [MentalHealthView.Entry]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Past Journal Entries")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding([.top, .horizontal])

            if entries.isEmpty {
                Text("No entries yet.")
                    .foregroundColor(.white)
                    .padding()
            } else {
                List {
                    ForEach(entries) { entry in
                        VStack(alignment: .leading, spacing: 6) {
                            Text("🧠 Emotion:")
                                .font(.headline)
                                .foregroundColor(.darkBlue)
                            Text(entry.emotionMessage)
                                .foregroundColor(.black)
                                .fixedSize(horizontal: false, vertical: true)

                            Text("📓 Journal:")
                                .font(.headline)
                                .foregroundColor(.darkBlue)
                                .padding(.top, 4)
                            Text(entry.textEntry)
                                .foregroundColor(.black)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .padding(.vertical, 8)
                    }
                }
                //.listStyle(InsetGroupedListStyle())
                .background(Color.lightBlue)
            }

            Spacer()
        }
        .background(Color.lightBlue)
        .ignoresSafeArea()
    }
}
