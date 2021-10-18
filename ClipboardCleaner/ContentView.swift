//
//  ContentView.swift
//  ClipboardCleaner
//
//  Created by Ma Xueyuan on 2020/10/29.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    @State private var dummy = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("TEXT1")
                    .font(.title3)
                    .padding()
                
                Text("TEXT2")
                    .font(.footnote)
                    .padding()
                
                TextField(LocalizedStringKey("PASTE_AREA"), text: $dummy)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            .navigationBarTitle(Text("TITLE"), displayMode: .inline)
            .navigationBarItems(trailing: Button("RATE", action: {
                guard let writeReviewURL = URL(string: "https://apps.apple.com/app/id1538447301?action=write-review") else {
                    fatalError("Expected a valid URL")
                }
                UIApplication.shared.open(writeReviewURL, options: [:], completionHandler: nil)
            }))
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
