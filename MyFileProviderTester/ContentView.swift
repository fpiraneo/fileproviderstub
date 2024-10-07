//
//  ContentView.swift
//  MyFileProviderTester
//
//  Created by Francesco Piraneo G. on 07.10.2024.
//

import SwiftUI
import FileProvider

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Who is Brave enough?")
            Button {
                
                let domain = NSFileProviderDomain(identifier: NSFileProviderDomainIdentifier(rawValue: "me.piranef.fileprovider"), displayName: "piranef")
                NSFileProviderManager.add(domain) { theError in
                    NSLog(">>> ERROR: \(theError?.localizedDescription ?? "No error")")
                }
                
            } label: {
                Text("Add domain")
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
