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
        
        ZStack {
        
            M7Text("Текст", style: .largeTitle)
            .padding().foregroundColor(M7Colors.onPrimary.highEmphasis)
            
        }.background(M7Colors.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
