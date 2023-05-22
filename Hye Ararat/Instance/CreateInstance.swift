//
//  CreateInstance.swift
//  Hye Ararat
//
//  Created by Joseph Maldjian on 5/21/23.
//

import SwiftUI

struct CreateInstance: View {
    @State private var step = "Details"
    var steps = ["Details", "Disks", "Networks", "Limits", "Snaps"]
    var body: some View {
        VStack{
            Text("Create Instance")
                .font(.title)
                .fontWeight(.bold)
                Picker("", selection: $step) {
                    ForEach(steps, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(.segmented)
                        if step == "Details" {
                InstanceDetails()
            }
            Spacer()
            #if os(macOS)
            HStack{
                Spacer()
                Button("Back") {
                    
                }
                Button("Next") {
                    step = "Disks"
                }
            }.frame(maxWidth: .infinity)
            #endif
        }.padding(20)
        
    }
}

struct CreateInstance_Previews: PreviewProvider {
    static var previews: some View {
        CreateInstance()
    }
}
