//
// MentalHealthView.swift
// HealthPal
//
// Created by Scholar on 7/29/25.
//

import SwiftUI

struct MentalHealthView: View {
    @Binding var name: String
    @State private var message: String = ""
    @State private var entryText: String = ""

    struct Entry: Codable, Identifiable {
        var id = UUID()
        var emotionMessage: String
        var textEntry: String
    }

    @State private var savedEntries: [Entry] = {
        if let data = UserDefaults.standard.data(forKey: "SavedEntries"),
           let decoded = try? JSONDecoder().decode([Entry].self, from: data) {
            return decoded
        }
        return []
    }() // end savedEntries

    var body: some View {
        NavigationView {
            ZStack {
                Color.lightBlue.ignoresSafeArea(.all)

                ScrollView {
                    VStack {
                        // Welcome Banner
                        ZStack {
                            Rectangle()
                                .fill(Color.darkBlue)
                                .frame(width: 350, height: 90)
                                .cornerRadius(20)

                            Text("Welcome, \(name)!")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                
                        } // end ZStack (banner)

                        // Emotion Picker
                        Text("Choose your emotion:")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .padding(.top)
                            .foregroundColor(Color.darkBlue)

                        HStack {
                            Button("😭") { message = "Feeling very sad. It's okay to feel this way." }
                            Button("😢") { message = "You seem down. Take a deep breath 💙" }
                            Button("☹️") { message = "Feeling a little off today? Be kind to yourself." }
                            Button("😐") { message = "Neutral days are part of the journey." }
                            Button("🙂") { message = "Glad you're feeling alright!" }
                            Button("😁") { message = "Feeling good! Keep it going! 💪" }
                            Button("😃") { message = "You're shining today 🌟" }
                        }
                        .padding(15)
                        .border(Color.darkBlue, width: 3)
                        .cornerRadius(5)

                        if !message.isEmpty {
                            Text(message)
                                .font(.headline)
                                .foregroundColor(Color.darkBlue)
                                .padding()
                                .multilineTextAlignment(.center)
                                .background(Color.white.opacity(0.3))
                                .cornerRadius(10)
                                .padding(.top)
                        }

                        // Self-care Suggestions
                        Text("Need a mental health break?")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .padding(.vertical)
                            .foregroundColor(Color.darkBlue)

                        VStack(alignment: .leading, spacing: 8) {
                            Text("Read a Book 📖")
                            Text("Meditate 🧘")
                            Text("Journal 📝")
                            Text("Do some gardening 👩‍🌾")
                            Text("Talk to a friend 🗣️")
                            Text("Exercise 👟")
                        }
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color.darkBlue)

                        // Journal Prompt
                        Text("How did your day go?")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.darkBlue)
                            .padding([.top, .leading, .trailing])

                        TextField("Type Here...", text: $entryText)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding([.leading, .bottom, .trailing])

                        // Save and Refresh Button
                        Button("Save and Refresh") {
                            let trimmedEntry = entryText.trimmingCharacters(in: .whitespacesAndNewlines)
                            if !message.isEmpty && !trimmedEntry.isEmpty {
                                let newEntry = Entry(emotionMessage: message, textEntry: trimmedEntry)
                                savedEntries.append(newEntry)

                                if let encoded = try? JSONEncoder().encode(savedEntries) {
                                    UserDefaults.standard.set(encoded, forKey: "SavedEntries")
                                }

                                message = ""
                                entryText = ""
                            }
                        }
                        .padding()
                        .background(Color.darkBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10)

                        // View Past Entries Link
                        NavigationLink(destination: PastMentalView(entries: savedEntries)) {
                            Text("Click here to view past entries")
                                .padding()
                                .background(Color.darkBlue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.top)
                    }
                    .padding(.bottom, 100) // space for keyboard or TabView
                } // end ScrollView
            } // end ZStack
        } // end NavigationView
    } // end body
} // end struct MentalHealthView

#Preview {
    @Previewable @State var name = ""
    MentalHealthView(name: $name)
}
