import SwiftUI

struct PastEntriesView: View {
    var entries: [String]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Past Journal Entries")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()

            if entries.isEmpty {
                Text("No entries yet.")
                    .foregroundColor(.white)
                    .padding()
            } else {
                ScrollView {
                    ForEach(entries.indices, id: \.self) { index in
                        Text("• \(entries[index])")
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.bottom, 5)
                            .foregroundColor(.white)
                    }
                }
            }

            Spacer()
        }
        .background(Color.lightBlue)
        .ignoresSafeArea()
    }
}
