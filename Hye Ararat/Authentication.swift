//
//  Authentication.swift
//  Hye Ararat
//
//  Created by Joseph Maldjian on 5/22/23.
//

import SwiftUI

struct Authentication: View {
    @State private var araratUrl = ""
    var body: some View {
        VStack{
            Text("Welcome to Ararat")
                .font(.title)
                .fontWeight(.bold)
            Text("Please enter your Ararat URL and login key to get started").font(.title3).fontWeight(.medium).multilineTextAlignment(.center)
            Form {
                TextField("Ararat URL", text: $araratUrl)
                TextField("Login Key", text: $araratUrl)
            }
        }.padding(20)
    }
}

struct Authentication_Previews: PreviewProvider {
    static var previews: some View {
        Authentication()
    }
}
