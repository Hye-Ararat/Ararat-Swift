//
//  ContentView.swift
//  Hye Ararat
//
//  Created by Joseph Maldjian on 5/21/23.
//

import SwiftUI
import AppAuth

struct ContentView: View {
    @State private var needAuth = (KeychainHelper.standard.read(service: "ararat", account: "ararat") == nil)
    @State private var araratUrl = ""
    @State private var loginKey = ""
    @State private var showingAuthPage = false
    private var authState: OIDAuthState?


    var body: some View {
        Navigation().alert("Welcome to Ararat!", isPresented: $needAuth) {
            TextField("Ararat URL", text: $araratUrl).autocorrectionDisabled(true)
            SecureField("Login Key", text: $loginKey).autocorrectionDisabled(true)
            Button("OK") {
                showingAuthPage.toggle()
            }
        } message: {
            Text("Please enter your Hye Ararat URL and login key")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
