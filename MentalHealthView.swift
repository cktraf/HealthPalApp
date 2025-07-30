import SwiftUI

struct MentalHealthView: View {
    @Binding var name: String
    @State private var message: String = ""
    var body: some View {
        ZStack {
            Color.lightBlue
                .ignoresSafeArea(.all)

            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.darkBlue)
                        .frame(width: 350, height: 90)
                        .cornerRadius(20)
                    
                    Text("Welcome \(name)!")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                }

                Text("Choose your emotion:")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .padding(.top)
                    .foregroundColor(Color.darkBlue)

                HStack {
                    Button("😭") {
                        message = "Feeling very sad. It's okay to feel this way."
                    }
                    Button("😢") {
                        message = "You seem down. Take a deep breath 💙"
                    }
                    Button("☹️") {
                        message = "Feeling a little off today? Be kind to yourself."
                    }
                    Button("😐") {
                        message = "Neutral days are part of the journey."
                    }
                    Button("🙂") {
                        message = "Glad you're feeling alright!"
                    }
                    Button("😁") {
                        message = "Feeling good! Keep it going! 💪"
                    }
                    Button("😃") {
                        message = "You're shining today 🌟"
                    }
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

                Text("Need a mental health break?")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .padding(.vertical)
                    .foregroundColor(Color.darkBlue)

                Text("Read a Book 📖")
                    .font(.title2)
                    .foregroundColor(Color.darkBlue)

                Text("Meditate 🧘")
                    .font(.title2)
                    .foregroundColor(Color.darkBlue)
                
                Text("Journal 📝")
                    .font(.title2)
                    .foregroundColor(Color.darkBlue)
                
                Text("Do some gardening 👩‍🌾")
                    .font(.title2)
                    .foregroundColor(Color.darkBlue)
                
                Text("Talk to a friend 🗣️")
                    .font(.title2)
                    .foregroundColor(Color.darkBlue)
                
                Text("Exercise 👟")
                    .font(.title2)
                    .foregroundColor(Color.darkBlue)
                    .padding(.bottom)
                    
    
                    
                    Text("How did your day go?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.darkBlue)
                        .padding(.all)
                    
                    TextField("Type Here...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding([.leading, .bottom, .trailing])
                    
                Spacer()
                
                Button("Save and Refresh") {
                    print("hi")
                }
                
                Button("Click here to view past entries") {
                    print("hi")
                }
                .padding(.top)
                
                
            }
        }
    }
}


#Preview {
    @Previewable @State var name = ""
    MentalHealthView(name: $name)
}
