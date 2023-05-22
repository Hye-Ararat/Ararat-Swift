//
//  InstanceDetails.swift
//  Hye Ararat
//
//  Created by Joseph Maldjian on 5/21/23.
//

import SwiftUI

struct InstanceDetails: View {
    @State private var instanceType = "N-VPS"
    @State private var instanceName = ""
    var types = ["N-VPS", "KVM"]
    var body: some View {
        Form {
            TextField("Instance Name", text: $instanceName)
            Picker("Instance Type", selection: $instanceType) {
                ForEach(types, id: \.self) {
                    Text($0)
                }
            }
        }
    }
}

struct InstanceDetails_Previews: PreviewProvider {
    static var previews: some View {
        InstanceDetails()
    }
}
