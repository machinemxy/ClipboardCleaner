//
//  ContentView.swift
//  ClipboardCleaner
//
//  Created by Ma Xueyuan on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    @State private var dummy = ""
    
    var body: some View {
        VStack {
            Text("The data in clipboard was cleared!").font(.title3).padding()
            
            Text("If you don't believe it, you can try pasting in the following text box.").font(.footnote).padding()
            
            TextField("test area", text: $dummy).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
