//
// MentalHealthView.swift
// HealthPal
//
// Created by Scholar on 7/29/25.
//

import SwiftUI
struct MentalHealthView: View {
    @Binding var name : String
    var body: some View {
        ZStack{
            Color.lightBlue
            .ignoresSafeArea(.all)

            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color(red: 56/255, green: 182/255, blue: 255/255))
                        .frame(width: 350, height: 90)
                        .cornerRadius(20)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                        .cornerRadius(20)
                    Text("Welcome \(name)! How are you today?")
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.all)
                            .padding(10)
                
                    
                   
                }//zstack
                
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
                    .padding(15)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                    .padding(.top, 1.0)
                    .cornerRadius(5)
                    
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
    @Previewable @State var name = ""
    MentalHealthView(name: $name)
}
