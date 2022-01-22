//
//  InfoView.swift
//  QuanCard (swiftUI)
//
//  Created by Quan's Macbook on 22/01/2022.
//

import SwiftUI


struct InfoView: View {
    let phoneNumber : String
    let imageName : String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(
                HStack {
                    Image(systemName: imageName).foregroundColor(.green)
                    Text(phoneNumber)
                        .font(Font.system(size: 20))
                        //.foregroundColor(Color("Info color"))
                }
            )
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(phoneNumber: "+84 935 365 832", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
