//
//  ContentView.swift
//  Shared
//
//  Created by Alexander Romanov on 11.09.2020.
//

import SwiftUI
import M7Native

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            M7Surface() {
                
                M7Text("Текст", style: .largeTitle)
                
            }
            
            M7Background() {
                
                M7Button(action: { print("sdas") }, content: { M7Text("ddd") })
                
            }

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
