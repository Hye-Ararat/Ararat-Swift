//
//  Instances.swift
//  Hye Ararat
//
//  Created by Joseph Maldjian on 5/21/23.
//

import SwiftUI

struct Instances: View {
    @State private var on = true
    func test() -> Void {
        return
    }
    var body: some View {
#if (!os(macOS))
InstanceNavigation()
        
#else
        NavigationStack{
InstanceNavigation()
        }
        
#endif
    }

    
    
}

struct InstanceNavigation: View {
    @State private var on = false
    #if !os(macOS)
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
#endif
    func test() -> Void {
        return
    }
    var body: some View {
        List{
            NavigationLink(destination: Instance()){
                ZStack{
                    
                    HStack{
                        Circle().fill(.red).frame(width: 10, height: 10)
                        VStack(alignment: .leading){
                            Text("Raphael is a Dummy")
                                .multilineTextAlignment(.leading).fontWeight(.semibold)
                            Text("Ubuntu 22.04")
                                .font(.caption)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.leading)
                        }
                        HStack{
                            VStack{
                                Text("77%")
                                Text("CPU").font(.caption)
                            }.padding(.leading)
                            VStack{
                                Text("77%")
                                Text("Memory").font(.caption)
                            }.padding(.leading)
                            VStack{
                                Text("77%")
                                Text("Disk").font(.caption)
                            }.padding(.leading)
                            #if !os(macOS)
                            if idiom == .pad || idiom == .mac {
                                ZStack {
                                RoundedRectangle(cornerRadius: 30, style: .continuous).fill(.blue)
                                Text("Container")
                            }
                                .frame(width: 90, height: 24).padding(.leading)
                        }
                            #else
                            ZStack {
                            RoundedRectangle(cornerRadius: 30, style: .continuous).fill(.blue)
                            Text("Container")
                        }
                            .frame(width: 90, height: 24).padding(.leading)
                            #endif
                            
                        }.padding(.leading).frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                }
                
            }
            #if os(macOS)
            Divider()
            #endif
            NavigationLink(destination: Instance()){
                ZStack{
                    
                    HStack{
                        Circle().fill(.green).frame(width: 10, height: 10)
                        VStack(alignment: .leading){
                            Text("Demo")
                                .multilineTextAlignment(.leading).fontWeight(.semibold)
                            Text("Ubuntu 22.04")
                                .font(.caption)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.leading)
                        }
                        HStack{
                            VStack{
                                Text("77%")
                                Text("CPU").font(.caption)
                            }.padding(.leading)
                            VStack{
                                Text("77%")
                                Text("Memory").font(.caption)
                            }.padding(.leading)
                            VStack{
                                Text("77%")
                                Text("Disk").font(.caption)
                            }.padding(.leading)
                            #if !os(macOS)
                            if idiom == .pad || idiom == .mac {
                                ZStack {
                                RoundedRectangle(cornerRadius: 30, style: .continuous).fill(.blue)
                                Text("Container")
                            }
                                .frame(width: 90, height: 24).padding(.leading)
                        }
                            #else
                            ZStack {
                            RoundedRectangle(cornerRadius: 30, style: .continuous).fill(.blue)
                            Text("Container")
                        }
                            .frame(width: 90, height: 24).padding(.leading)
                            #endif
                            
                        }.padding(.leading).frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                }
                
            
                
            }
        }
        .toolbar {
            ToolbarItemGroup {
                Button("Create"){
                    on.toggle()
                }.sheet(isPresented: $on) {
                    CreateInstance()
                }
                
            }
        }.navigationTitle("Instances")
    }
}

struct Instances_Previews: PreviewProvider {
    static var previews: some View {
        Instances()
    }
}
