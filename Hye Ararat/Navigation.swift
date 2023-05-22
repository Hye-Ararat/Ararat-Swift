//
//  Navigation.swift
//  Hye Ararat
//
//  Created by Joseph Maldjian on 5/21/23.
//

import SwiftUI

struct Navigation: View {
    @State private var selection: Int? = 0
    var body: some View {
            NavigationView{
                    List {
                        NavigationLink {
                            Instances()
                            
                        } label: {
                            Label("Instances", systemImage: "terminal")
                            
                        }
                    }.navigationTitle("Hye Ararat").listStyle(.sidebar)
                }
            }
    }


struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
