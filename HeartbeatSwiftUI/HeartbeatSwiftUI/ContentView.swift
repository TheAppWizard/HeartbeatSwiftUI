//
//  ContentView.swift
//  HeartbeatSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 27/09/20.
//

import SwiftUI

struct ContentView: View {
    //Variables
    @State private var rate = false
    @State private var heartBeat = false

    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("HEALTH  HEARBEAT SWIFTUI")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white).opacity(0.6)
        
        ZStack {
            //Outline Heart
            Image("heart")
                .scaleEffect(heartBeat ? 1 : 1.3)
                .animation(Animation.interpolatingSpring(stiffness: 30, damping: 10).speed(1.3/2).repeatForever(autoreverses: false))
                .onAppear() {
                    self.heartBeat.toggle()
                       }
             //Pulse Animation
            Image("mypulse")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Rectangle().offset(x: rate ? 0 : -125))
                .animation(Animation.interpolatingSpring(
                            stiffness: 30, damping: 10).speed(1.3).repeatForever(autoreverses: true).delay(0.2))
                .offset(x: -12)
                .onAppear() {
                    self.rate.toggle()
                
            }
        }
                HStack{
                    Text("THE APP WIZARD")
                        .font(.body)
                        .fontWeight(.thin)
                       .foregroundColor(Color.red).opacity(0.6)
                    }
                    }
                       
                }
            }
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.light)
    }
}

