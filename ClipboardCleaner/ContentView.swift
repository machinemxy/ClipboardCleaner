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
                Text("The text in clipboard was cleared!")
                    .font(.title3)
                    .padding()
                
                Text("If you don't believe it, you can try pasting in the following text box.")
                    .font(.footnote)
                    .padding()
                
                TextField("paste area", text: $dummy)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            .navigationBarTitle(Text("Clipboard Eraser"), displayMode: .inline)
            .navigationBarItems(trailing: Button("Rate", action: {
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
