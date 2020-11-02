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
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("The text in clipboard was removed!")
                    .font(.title3)
                    .padding()
                
                Text("If you don't believe it, you can try pasting in the following text box.")
                    .font(.footnote)
                    .padding()
                
                TextField("paste area", text: $dummy)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Remind"), message: Text("The rating view may not be displayed depending on your setting. In that case you can also rate it in App Store."), dismissButton: .default(Text("OK")))
            })
            .navigationBarTitle(Text("Eraser"), displayMode: .inline)
            .navigationBarItems(trailing: Button("Rate", action: {
                if let scene = UIApplication.shared.currentScene {
                    SKStoreReviewController.requestReview(in: scene)
                }
                showAlert = true
            }))
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
