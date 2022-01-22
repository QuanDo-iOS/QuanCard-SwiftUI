//
//  ContentView.swift
//  QuanCard (swiftUI)
//
//  Created by Quan's Macbook on 22/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.29, blue: 0.37, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("MinhQuan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4)
                    )
                Text("Do Minh Quan")
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                    .font(Font.custom("DancingScript-Regular", size: 40))
                Text("IOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.pink)
                Divider()
                InfoView(phoneNumber: "+84 935 365 832", imageName: "phone.fill")
                InfoView(phoneNumber: "dracolucius05032002@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

