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
                
                VStack {
                    
                    M7Icon(.send, size: .s)
                    
                    M7Icon(.send, size: .m)
                    
                    M7Icon(.send, size: .l, color: .primary)
                
                    M7Text("Текст", style: .largeTitle, color: .error)
                
                }
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
