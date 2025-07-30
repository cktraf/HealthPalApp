//
// MentalHealthView.swift
// HealthPal
//
// Created by Scholar on 7/29/25.
//
import SwiftUI
struct MentalHealthView: View {
    var body: some View {
        ZStack{
            Color.lightBlue
            .ignoresSafeArea(.all)

            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: 270.0, height: 100.0)
                    Text("Welcome! How are you today?")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                        .padding(10)
                        .border(Color.black, width: 5)
                        .cornerRadius(10)
                }
                    
                
                Text("Choose your emotion:")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                HStack(){
                    Button("😭") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("😢") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("☹️") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("😐") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("🙂") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("😁") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("😃") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                }
                .padding(8)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding(.top, 1.0)
                
                Text("Need a mental health break?")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.vertical)
                
                    Text("Read a Book 📖")
                    Text("Meditate 🧘")
                    Text("Journal 📝")
                Spacer()
                
                
                
            }//vstack
            
            
        }
    }
}
#Preview {
  MentalHealthView()
}
